@extends('dashboard')

@section('title', 'Laptop details')

@section('content')
    <div class="p-4 rounded-md shadow-md">
        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-2 gap-4">
           
            
                <div id="indicators-carousel" class="relative w-full bg-gray-400 border  rounded-md" data-carousel="static">
                    <!-- Carousel wrapper -->
                    <div class="relative h-56 overflow-hidden rounded-lg md:h-96">
                        <div class="hidden duration-700 ease-in-out" data-carousel-item="active">
                            <img src={{ $laptop->avatar_url }} class="absolute block rounded-md -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2" alt="...">
                        </div>
                        @foreach ($laptop->images as $image)
                        <div class="hidden duration-700 ease-in-out" data-carousel-item="">
                            <img src={{ $image->url }} class="absolute block rounded-md -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2" alt="...">
                        </div>
                        @endforeach
                    
                    
                    </div>
                    <!-- Slider indicators -->
                    <div class="absolute z-30 flex -translate-x-1/2 space-x-3 rtl:space-x-reverse bottom-5 left-1/2">
                        @for ($i = 0; $i < $laptop->images->count()+1; $i++)
                            <button type="button" class="w-3 h-3 rounded-full " aria-label="Slide {{ $i + 1 }}" data-carousel-slide-to="{{ $i }}"></button>
                        @endfor
                    </div>
                    
                    <!-- Slider controls -->
                    <button type="button" class="absolute top-0 start-0 z-30 flex items-center justify-center h-full px-4 cursor-pointer group focus:outline-none" data-carousel-prev>
                        <span class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-white/30 dark:bg-gray-800/30 group-hover:bg-white/50 dark:group-hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
                            <svg class="w-4 h-4 text-white dark:text-gray-800 rtl:rotate-180" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 1 1 5l4 4"/>
                            </svg>
                            <span class="sr-only">Previous</span>
                        </span>
                    </button>
                    <button type="button" class="absolute top-0 end-0 z-30 flex items-center justify-center h-full px-4 cursor-pointer group focus:outline-none" data-carousel-next>
                        <span class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-white/30 dark:bg-gray-800/30 group-hover:bg-white/50 dark:group-hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
                            <svg class="w-4 h-4 text-white dark:text-gray-800 rtl:rotate-180" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 9 4-4-4-4"/>
                            </svg>
                            <span class="sr-only">Next</span>
                        </span>
                    </button>
                </div>
            <form method="POST" action="{{ route('cart.add',$laptop->id) }}" class="rounded-md py-2 px-5  bg-white flex flex-col items-start shadow-md border border-gray-300">
                <h2 class="font-bold text-2xl mb-4">
                    {{ $laptop->name }}
                </h2>
                <input type="number" name="laptop_id" class="hidden" value={{ $laptop->id }}>
                <h2 class="font-bold text-3xl mb-4 text-red-600">
                    {{ $laptop->price }}
                </h2>
                    @csrf
                    <div>
                        <label for="quantity" class="text-gray-500">Quantity:</label>
                        <input type="number" id="quantity" name="quantity" value="1" min="1" class="rounded-md border-gray-300 text-gray-500 ">
                    </div>
                    <button type="submit" class="w-64  px-2 py-1 bg-cyan-400 hover:bg-cyan-600 border border-gray-200 rounded-md text-white mt-4 flex flex-col items-center">
                        <span>
                            BUY NOW
                        </span>
                        <span>
                            ship to home or take at shop
                        </span> 
                    </button>
                    <div class="flex flex-col mt-3 py-2 text-black" >  
                        <span style="font-size:15px">✔ 12-month genuine warranty.</span>
                        <span style="font-size:15px">✔ Free renew in 7 days.</span>
                        <span style="font-size:15px">✔ License Windows integration.&nbsp;</span>
                        <span style="font-size:15px">✔ Free shipping.</span>
                    </div>
                  
            </form>
          
        </div>
        <hr class="border-gray-400 mt-6 border-1 rounded"/>

         {{-- laptop detail --}}
         <h2 class="font-bold text-2xl mt-3 mb-2 text-cyan-500">
          LAPTOP INFORMATION
        </h2>
       
        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-2 gap-4">
            <div class="relative overflow-x-auto shadow-md sm:rounded-lg border border-gray-400">
                <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
                    <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                        <tr>
                            <th scope="col" class="px-6 py-3">
                                Specifications
                            </th>
                            <th scope="col" class="px-6 py-3">
                              
                            </th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700 border-t-2">
                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                 CPU
                            </th>
                            <td class="px-6 py-4">
                               {{ $laptop->processor }}
                            </td>
                            
                        </tr>
                        <tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700 border-t-2">
                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                 RAM
                            </th>
                            <td class="px-6 py-4">
                               {{ $laptop->ram }}
                            </td>
                            
                        </tr>
                        <tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700 border-t-2">
                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                 ROM
                            </th>
                            <td class="px-6 py-4">
                               {{ $laptop->rom }}
                            </td>
                            
                        </tr>
                        <tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700 border-t-2">
                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                 Graphic card
                            </th>
                            <td class="px-6 py-4">
                               {{ $laptop->graphics_card }}
                            </td>
                            
                        </tr>
                        <tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700 border-t-2">
                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                 Screen
                            </th>
                            <td class="px-6 py-4">
                               {{ $laptop->screen }}
                            </td>
                            
                        </tr>
                        <tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700 border-t-2">
                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                 Keyboard
                            </th>
                            <td class="px-6 py-4">
                               {{ $laptop->keyboard }}
                            </td>
                            
                        </tr>
                        <tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700 border-t-2">
                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                 Wireless
                            </th>
                            <td class="px-6 py-4">
                               {{ $laptop->wireless }}
                            </td>
                            
                        </tr>
                        <tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700 border-t-2">
                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                 LAN
                            </th>
                            <td class="px-6 py-4">
                               {{ $laptop->lan }}
                            </td>
                            
                        </tr>
                        <tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700 border-t-2">
                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                 Bluetooth
                            </th>
                            <td class="px-6 py-4">
                               {{ $laptop->bluetooth }}
                            </td>
                            
                        </tr>
                        <tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700 border-t-2">
                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                 Webcam
                            </th>
                            <td class="px-6 py-4">
                               {{ $laptop->webcam }}
                            </td>
                            
                        </tr>
                        <tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700 border-t-2">
                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                 Battery
                            </th>
                            <td class="px-6 py-4">
                               {{ $laptop->battery }}
                            </td>
                            
                        </tr>
                        <tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700 border-t-2">
                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                 OS
                            </th>
                            <td class="px-6 py-4">
                               {{ $laptop->system }}
                            </td>
                            
                        </tr>
                        <tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700 border-t-2">
                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                 Weight
                            </th>
                            <td class="px-6 py-4">
                               {{ $laptop->weight }}
                            </td>
                            
                        </tr>
                        <tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700 border-t-2">
                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                 Color
                            </th>
                            <td class="px-6 py-4">
                               {{ $laptop->color }}
                            </td>
                            
                        </tr>
                       
                      
                    </tbody>
                </table>
               
            </div>
            <div class="bg-gray">advertisment</div>
        </div>


    </div>
   
@endsection
