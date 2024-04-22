<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'Laravel') }}</title>
        
        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />

        <!-- Scripts --> 
        @vite(['resources/css/app.css', 'resources/js/app.js'])
        {{-- <link href="{{ asset('css/app.css') }}" rel="stylesheet">
        <script defer src="{{asset('js/app.js')}}"></script>
         --}}
        <style>



        </style>
    </head>
    <body class="font-sans antialiased ">
        <div class="min-h-screen bg-gray-100 mb-2">
            @include('layouts.navigation')
            
            <!-- Page Heading -->
            @if (isset($header))
                <header class="bg-white shadow">
                    <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
                        {{ $header }}
                    </div>
                </header>
            @endif

            <!-- Page Content -->
            <main>
                {{ $slot }}
            </main>
            <footer class="bg-white shadow mb-2">
                <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
                    <div class="flex justify-between">
                        <div class="mb-4 mx-2 flex-none hover:flex-1">
                            <h2 class="text-lg font-semibold mb-2">Contact Information</h2>
                            <p class="text-sm">123 ABC Street, XYZ Ward, HCM City</p>
                            <p class="text-sm">Email: example@example.com</p>
                            <p class="text-sm">Phone: 0123 456 789</p>
                        </div>
                        <div class="mb-4 md:mb-0 mx-2">
                            <h2 class="text-lg font-semibold mb-2">Links</h2>
                            <ul class="text-sm">
                                <li><a href="#" class="text-gray-600 hover:text-gray-800">Home</a></li>
                                <li><a href="#" class="text-gray-600 hover:text-gray-800">Products</a></li>
                                <li><a href="#" class="text-gray-600 hover:text-gray-800">Contact</a></li>
                                <li><a href="#" class="text-gray-600 hover:text-gray-800">About Us</a></li>
                            </ul>
                        </div>
                        <!-- Support Section -->
                        <div class="mb-4 md:mb-0 mx-2">
                            <h2 class="text-lg font-semibold mb-2">Support</h2>
                            <ul class="text-sm">
                                <li><a href="#" class="text-gray-600 hover:text-gray-800">FAQs</a></li>
                                <li><a href="#" class="text-gray-600 hover:text-gray-800">Contact Us</a></li>
                                <li><a href="#" class="text-gray-600 hover:text-gray-800">Shipping Information</a></li>
                                <li><a href="#" class="text-gray-600 hover:text-gray-800">Return Policy</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Divider -->
                <hr class="border-gray-200 my-4">
                <!-- Bottom Section -->
                <div class="text-center text-sm text-gray-600 p-2">
                    © 2024 MCK Company. All rights reserved.
                </div>
            </footer>
            
            
            
        </div>
    </body>
</html>
