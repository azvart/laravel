<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Simple Sidebar - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->

  <link rel="stylesheet"  href="{{asset('vendor/bootstrap/css/bootstrap.min.css')}}">

  <!-- Custom styles for this template -->
  <link href="{{asset('css/simple-sidebar.css')}}" rel="stylesheet">
@section('styles')
@show
</head>

<body>

  <div class="d-flex" id="wrapper">

    <!-- Sidebar -->






    <div class="bg-light border-right" id="sidebar-wrapper">
      <div class="sidebar-heading">@lang('base.start') </div>
      <div class="list-group list-group-flush">
   <div class='card'>
     <div class='card-header'>
       <div class="list-group list-group-flush">
             <div id="basket">
             <table id="bascets">
                 <tbody>
                 <tr style="display: none;" class="hPb">
                     <td>Выбрано:</td>
                     <td><span id="totalGoods">0</span> товаров</td>
                     <td>Сумма: &asymp; </td>
                     <td><span id="totalPrice">0</span> руб.</td>
                 </tr>
                 <tr style="display: table-row;" class="hPe">
                     <td colspan="2">Корзина пуста</td>
                 </tr>
                 <tr>
                     <td><a style="display: none;" id="clearBasket" href="#">Очистить</a></td>
                     <td><a style="display: none;" id="checkOut" href="{{asset('basket')}}">Оформить</a></td>
                 </tr>
                 </tbody>
             </table>
         </div>
       </div>
     </div>
      <div class='card-header'>
        @foreach($v_categories as $cat)
        <a href="{{asset('category/'.$cat->id)}}" class='list-group-item'>{{$cat->name}}</a>
        @endforeach
      </div>
    </div>
        <a href="{{asset('home/')}}" class="list-group-item list-group-item-action bg-light">@lang('base.home')</a>
        <a href="{{asset('category/')}}" class="list-group-item list-group-item-action bg-light">@lang('base.category')</a>
        <a href="thirdarticle" class="list-group-item list-group-item-action bg-light">@lang('base.third')</a>
        <a href="site" class="list-group-item list-group-item-action bg-light">Четвертая статья</a>
        <a href="home" class="list-group-item list-group-item-action bg-light">Home</a>
        <a href="six" class="list-group-item list-group-item-action bg-light">Status</a>
      </div>
    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">

      <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
        <button class="btn btn-primary" id="menu-toggle">@lang('base.close')</button>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                    <div class="dropdown">
  <button class="btn btn-outline-light text-dark dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    @lang('base.language')
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="/?lang=ru">RU</a>
    <a class="dropdown-item" href="/?lang=en">EN</a>
    <a class="dropdown-item" href="/?lang=jp">JP</a>
  </div>
</div>
        </div>
      </nav>

      <div class="container-fluid">
	  <main class='py-4'>
       @yield('content')
	   </main>
      </div>
    </div>
    <!-- /#page-content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Bootstrap core JavaScript -->
  <script src="{{asset('vendor/jquery/jquery.min.js')}}"></script>
  <script src="{{asset('vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>

  <!-- Menu Toggle Script -->
  <script>
    $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });
  </script>
@section('scripts')
@show
</body>

</html>
