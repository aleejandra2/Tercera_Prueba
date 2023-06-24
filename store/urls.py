from re import L
from django.urls import path
from .views import Inicio,Tienda,Iniciosesion,Registro,Nosotros,Contactanos,VistaRapida,CerrarSesion,Categoria,Buscador,AñadirWishList,ListaDeDeseos,EliminarWishList,AñadirCarritoCompra,CarritoDeCompras,EliminarCarritoCompra,UpdateQuantity,ActualizarPerfil,Pago,Pedidos,Ordenes,MSG
from django.conf import settings
from django.conf.urls.static import static
urlpatterns = [
    path('',Inicio,name='store'), #
    path('tienda/',Tienda,name='tienda'), #
    path('login/',Iniciosesion,name='login'), #
    path('registration/',Registro,name='registration'), #
    path('nosotros/',Nosotros,name='nosotros'), #
    path('contactos/',Contactanos,name='contactos'), #
    path('quickview/<str:id>/',VistaRapida,name='quickview'), #
    path('logout/',CerrarSesion,name='logout'), #
    path('category/<str:id>/',Categoria,name='category'),#
    path('search/',Buscador,name='search'), #
    path('addwishlist/',AñadirWishList,name='addwishlist'), 
    path('wishlist/',ListaDeDeseos,name='wishlist'),
    path('delete_from_wishlist',EliminarWishList,name='delete_from_wishlist'),
    path('addcart',AñadirCarritoCompra,name='addcart'),
    path('lista_deseada/',CarritoDeCompras,name='lista_deseada'),
    path('delete_from_cart/',EliminarCarritoCompra,name='delete_from_cart'),
    path('update_quantity',UpdateQuantity,name='update_quantity'),
    path('update_profile/',ActualizarPerfil,name='update_profile'), #
    path('checkout/',Pago,name='checkout'),
    path('order_place/',Pedidos,name='order_place'),
    path('detalle_orden/',Ordenes,name='detalle_orden'),
]

urlpatterns += static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)