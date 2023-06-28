from django.contrib import messages
from django.shortcuts import redirect, render
from django.http import HttpResponse,HttpResponseRedirect
from .models import Order, Products,ProductCategory,WishList,Cart,ShippingAddress
from .forms import RegistrationForm
from django.contrib.auth.models import User
from django.contrib.auth import login,logout,authenticate
from django.contrib.auth.decorators import login_required

# Vista de la tienda de la página principal
def Inicio(request):
    products=Products.objects.all()
    categories=ProductCategory.objects.all()
    if request.user.is_authenticated:
        item_count=WishList.objects.filter(customer=request.user).count()
        cart_count=Cart.objects.filter(customer=request.user).count()
        context={'products':products,'categories':categories,'item_count':item_count,'cart_count':cart_count}
    else:    
        context={'products':products,'categories':categories}    
    return render(request,'store/pagina_principal.html',context)

# Para la tienda
def Tienda(request):
    products=Products.objects.all()
    if request.user.is_authenticated:
        item_count=WishList.objects.filter(customer=request.user).count()
        cart_count=Cart.objects.filter(customer=request.user).count()
        context={'products':products,'item_count':item_count,'cart_count':cart_count}
    else:
        context={'products':products}    
    return render(request,'store/tienda.html',context)

# for category view
def Categoria(request,id):
    name=ProductCategory.objects.get(id=id).category
    products=Products.objects.filter(category=id)
    if request.user.is_authenticated:
        item_count=WishList.objects.filter(customer=request.user).count()
        cart_count=Cart.objects.filter(customer=request.user).count()
        context={'products':products,'name':name,'item_count':item_count,'cart_count':cart_count}
    else:
        context={'products':products,'name':name}    
    return render(request,'store/categorias.html',context)

#Para el inicio sesion
def Iniciosesion(request):
    if request.method == 'POST':
        username=User.objects.get(email=request.POST['email']).username
        password=request.POST['password']
        user=authenticate(request,username=username,password=password)
        if user is not None:
            login(request,user)
            return redirect('tienda')
        else:
            return HttpResponse('Credenciales no válidas')    
    context={}
    return render(request,'store/iniciosession.html',context)


# cerrar sesion 
def CerrarSesion(request):
    logout(request)
    return redirect('store')

# registrarse
def Registro(request):
    if request.user.is_authenticated==False:
        if request.method == 'POST':
            form=RegistrationForm(request.POST)
            if User.objects.filter(email=request.POST['email']):
                return HttpResponse('Este email ya esta en uso')
            if form.is_valid():
                form.save()
                # return  HttpResponse('user created successfully')
                messages.success(request,'Usuario creado correctamente')
                return redirect('login')
        else:
            form=RegistrationForm()            
        context={}    
        return render(request,'store/registro.html',context)
    else:
        return redirect('store')
@login_required
def ActualizarPerfil(request):
    cart_count=Cart.objects.filter(customer=request.user).count()
    item_count=WishList.objects.filter(customer=request.user).count()
    if request.method == 'POST':
        username=request.POST['username']
        if request.POST['old_password']:
            old_password=request.POST['old_password']
            user=authenticate(username=request.user,password=old_password)
            if user:
                user.username=username
                new_password=request.POST['new_password']
                user.set_password(new_password)
                user.save()
                messages.success(request,'Contraseña actualizada correctamente') 
                return redirect('login')
            else:
                return HttpResponse('La contraseña antigua es incorrecta')    
        else:
            email=request.user.email
            user=User.objects.get(email=email) 
            user.username=username
            user.save()
            # print(user.username)
            messages.success(request,'Usuario actualizado correctamente') 
            return redirect('store')   
    context={'cart_count':cart_count,'item_count':item_count}
    return render(request,'store/actualizarperfil.html',context)

# nosotros
def Nosotros(request):
    if request.user.is_authenticated:
        item_count=WishList.objects.filter(customer=request.user).count()
        cart_count=Cart.objects.filter(customer=request.user).count()
        context={'item_count':item_count,'cart_count':cart_count}
    else:
        context={}    
    return render(request,'store/nosotros.html',context)    

# contactanos
def Contactanos(request):
    if request.user.is_authenticated:
        item_count=WishList.objects.filter(customer=request.user).count()
        cart_count=Cart.objects.filter(customer=request.user).count()
        context={'item_count':item_count,'cart_count':cart_count}
    else:
        context={}    
    return render(request,'store/contactanos.html',context)   

# vista rapida del producto
def VistaRapida(request,id):
    product=Products.objects.get(id=id)
    if request.user.is_authenticated:
        item_count=WishList.objects.filter(customer=request.user).count()
        cart_count=Cart.objects.filter(customer=request.user).count()
        context={'product':product,'item_count':item_count,'cart_count':cart_count}
    else:
        context={'product':product}    
    return render(request,'store/vista_rapida.html',context)   

# buscador
def Buscador(request):
    if request.method == 'POST':
        name=request.POST['search_box']
        products=Products.objects.filter(name__icontains=name)
        if request.user.is_authenticated:
            item_count=WishList.objects.filter(customer=request.user).count()
            cart_count=Cart.objects.filter(customer=request.user).count()
            context={'products':products,'item_count':item_count,'cart_count':cart_count}
        else:
            context={'products':products}
    else:
        if request.user.is_authenticated:
            item_count=WishList.objects.filter(customer=request.user).count()
            cart_count=Cart.objects.filter(customer=request.user).count()
            context={'item_count':item_count,'cart_count':cart_count}
        else:
            context={}        
    return render(request,'store/buscador.html',context)


# AñadirWishList
@login_required
def AñadirWishList(request):
    
    if request.method == 'POST':
        customer=request.user
        product_id=Products(request.POST['product_id'])
        if WishList.objects.filter(customer=customer,product_id=product_id):
            messages.success(request,'Producto ya agregado')
            return redirect('store')
        else:
            wishlist=WishList.objects.create(customer=customer,product_id=product_id)
            item_count=WishList.objects.filter(customer=customer).count()
            context={'item_count':item_count}
            return redirect('store')
    context={}        
    return render(request,'store/navbar.html',context) 


# ListaDeDeseos
@login_required
def ListaDeDeseos(request):
    products=WishList.objects.filter(customer=request.user)
    item_count=WishList.objects.filter(customer=request.user).count()
    cart_count=Cart.objects.filter(customer=request.user).count()
    context={'products':products,'item_count':item_count,'cart_count':cart_count}
    return render(request,'store/wishlist.html',context)    

@login_required
def EliminarWishList(request):
    if request.method =='POST':
        if request.POST['delete']:
            product_id=request.POST['product_id']
            customer=request.user
            product=WishList.objects.get(product_id=product_id,customer=customer)
            product.delete()  
            return redirect('wishlist')
    return render(request,'store/wishlist.html',{})  


@login_required
def AñadirCarritoCompra(request):
    if request.method == 'POST':
        customer=request.user
        product_id=Products(request.POST['product_id'])
        quantity=request.POST['quantity']
        if Cart.objects.filter(customer=customer,product_id=product_id):
            # return HttpResponse('Product Already Added in Cart')
            messages.info(request,'Producto añadido correctamente')
            return redirect('store')
        else:
            Cart.objects.create(customer=customer,product_id=product_id,quantity=quantity)
            cart_count=Cart.objects.filter(customer=customer).count()
            print(cart_count)
            context={'cart_count':cart_count}
            messages.success(request,'Producto añadido correctamente')
            return redirect('store')
    context={}
    return render(request,'store/navbar.html',context) 

@login_required
def CarritoDeCompras(request):
    products=Cart.objects.filter(customer=request.user)
    cart_count=Cart.objects.filter(customer=request.user).count()
    item_count=WishList.objects.filter(customer=request.user).count()
    grand_total= sum([item.quantity* item.product_id.price for item in products])
    context={'products':products,'cart_count':cart_count,'item_count':item_count,'grand_total':grand_total}
    return render(request,'store/carritodecompras.html',context)

@login_required
def EliminarCarritoCompra(request):
    if request.method == 'POST':
        customer=request.user
        if request.POST.get('delete'):
            product_id=request.POST['product_id']
            product=Cart.objects.get(customer=customer,product_id=product_id)
            product.delete()
            return redirect('lista_deseada')
        if request.POST.get('all_delete'):
            products=Cart.objects.filter(customer=customer)
            products.delete()
            print(products)
            return redirect('lista_deseada')
    return render(request,'store/carritodecompras.html')        


@login_required
def UpdateQuantity(request):
    if request.method == "POST":
        customer=request.user
        product_id=request.POST['product_id']
        quantity=request.POST['quantity']
        product=Cart.objects.get(customer=customer,product_id=product_id)
        product.quantity=quantity
        product.save()
        return redirect('lista_deseada')
            
    return render(request,'store/carritodecompras.html')           


@login_required
def Pago(request):
    cart_count=Cart.objects.filter(customer=request.user).count()
    item_count=WishList.objects.filter(customer=request.user).count()
    products=Cart.objects.filter(customer=request.user)
    grand_total= sum([item.quantity* item.product_id.price for item in products])
    context={'grand_total':grand_total,'cart_count':cart_count,'item_count':item_count,'products':products}
    return render(request,'store/pago.html',context)


@login_required
def Pedidos(request):
    if request.method == 'POST':
        customer=request.user
        payment_mode=request.POST['method']
        name=request.POST['name']
        mobile_no=request.POST['mobile_no']
        email=request.POST['email']
        address_line1=request.POST['address1']
        address_line2=request.POST['address2']
        city=request.POST['city']
        state=request.POST['state']
        pincode=request.POST['pincode']
        ShippingAddress.objects.create(customer=customer,
                                       name=name,
                                       mobile_no=mobile_no,
                                       email=email,
                                       address_line1=address_line1,
                                       address_line2=address_line2,
                                       city=city,
                                       state=state,
                                       pincode=pincode,
                                       
                                      )
        products=Cart.objects.filter(customer=customer)
        for item in products:
            Order.objects.create(customer=customer,
                                 payment_mode=payment_mode,
                                 product_id=item.product_id,
                                 quantity=item.quantity    
                                )
        items=Cart.objects.filter(customer=customer)
        items.delete()                        
        messages.success(request,'Orden Recibida')
        return redirect('detalle_orden')
    return render(request,'store/checkout.html',{})

@login_required
def Ordenes(request):
    cart_count=Cart.objects.filter(customer=request.user).count()
    item_count=WishList.objects.filter(customer=request.user).count()
    orders=Order.objects.filter(customer=request.user)
    if ShippingAddress.objects.filter(customer=request.user).exists(): 
        order=orders[0]
        addresses=ShippingAddress.objects.filter(customer=request.user)
        address=addresses[len(addresses)-1]
        shipped_address=", ".join(
                                [str(address.address_line1),
                                address.address_line2,
                                address.city,
                                str(address.pincode),
                                
                                ]
                                )
        total_price=sum([item.product_id.price * item.quantity  for item in orders])
        context={'order':order,'address':address,'shipped_address':shipped_address,'orders':orders,'total_price':total_price,'cart_count':cart_count,'item_count':item_count}
    else:
        context={'order':0,'cart_count':cart_count,'item_count':item_count}    
    return render(request,'store/pedidos.html',context)

def MSG(request):
    messages.success(request,'Muchas gracias')  
