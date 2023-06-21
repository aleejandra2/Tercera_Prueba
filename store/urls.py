from re import L
from django.urls import path
from .views import storeView,shopView,LoginView,RegistroView,NosotrosView,contactanosView,VistaRapidaView,LogoutView,categoryView,BuscadorView,AddWishListView,WishListView,DeleteFromWishList,AddCartView,CartListView,DeleteCartView,UpdateQuantityView,UpdateProfileView,CheckoutView,OrderPlaceView,OrderView,MSG
from django.conf import settings
from django.conf.urls.static import static
urlpatterns = [
    path('',storeView,name='store'),
    path('shop/',shopView,name='shop'),
    path('login/',LoginView,name='login'),
    path('registration/',RegistroView,name='registration'),
    path('about/',NosotrosView,name='about'),
    path('contact/',contactanosView,name='contact'),
    path('quickview/<str:id>/',VistaRapidaView,name='quickview'),
    path('logout/',LogoutView,name='logout'),
    path('category/<str:id>/',categoryView,name='category'),
    path('search/',BuscadorView,name='search'),   
    path('addwishlist/',AddWishListView,name='addwishlist'), 
    path('wishlist/',WishListView,name='wishlist'),
    path('delete_from_wishlist',DeleteFromWishList,name='delete_from_wishlist'),
    path('addcart',AddCartView,name='addcart'),
    path('cartlist/',CartListView,name='cartlist'),
    path('delete_from_cart/',DeleteCartView,name='delete_from_cart'),
    path('update_quantity',UpdateQuantityView,name='update_quantity'),
    path('update_profile/',UpdateProfileView,name='update_profile'),
    path('checkout/',CheckoutView,name='checkout'),
    path('order_place/',OrderPlaceView,name='order_place'),
    path('order_detail/',OrderView,name='order_detail'),
    path('hello/',MSG),
]

urlpatterns += static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)