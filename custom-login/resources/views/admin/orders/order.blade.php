@extends('admin.admin')
@section('title', 'Manage Orders')

@section('content')
<div class="container mx-auto p-4">
    <div class="p-2 mb-4">
        <form method="GET" action="{{ route('admin_order.search') }}">
            <div class="flex items-center space-x-2">
                <x-text-input id="keyword" class="block w-50 mr-2"
                type="text"
                name="keyword"
                placeholder="name or email or phone" />
                <select id="status" name="status" class=" mr-2 rounded border-gray-300 w-50 text-gray-500 focus:ring-indigo-500 shadow-sm">
                    <option value="">-- Select Status --</option>
                    <option value="pending">Pending</option>
                    <option value="processing">Processing</option>
                    <option value="shipped">Shipped</option>
                    <option value="delivered">Delivered</option>
                    <option value="cancelled">Cancelled</option>
                </select>
                <x-primary-button class="mr-2">Search</x-primary-button>
            </div>
        </form>
    </div>

    <x-table :headers="['ID', 'User ID', 'Fullname', 'Email', 'Phone Number', 'Order Date', 'Status', 'Total Money', 'Actions']" :data="$orders" class="border-collapse border border-gray-200">
        @foreach ($orders as $order)
        <tr>
            <td class="px-6 py-4">{{ $order->id }}</td>
            <td class="px-6 py-4">{{ $order->user_id }}</td>
            <td class="px-6 py-4">{{ $order->fullname }}</td>
            <td class="px-6 py-4">{{ $order->email }}</td>
            <td class="px-6 py-4">{{ $order->phone_number }}</td>
            <td class="px-6 py-4">{{ $order->order_date }}</td>
            <td class="px-6 py-4">{{ $order->status }}</td>
            <td class="px-6 py-4">{{ $order->total_money }}</td>
            <td class="px-6 py-4 space-x-2">
                <x-nav-link :href="route('admin_order.getById', ['id' => $order->id])" class="text-yellow-400 hover:text-yellow-900">
                    {{ __('Details') }}
                </x-nav-link>
                @if ($order->status == 'pending' || $order->status == 'processing')
              
                <form method="POST" action="{{ route('admin_order.delete', ['id' => $order->id]) }}" class="inline cursor-pointer">
                    @csrf
                    @method('DELETE')
                   <button type="submit" class="text-3xl font-bold bg-red-400 hover:bg-red-600 rounded-md shadow-sm text-white px-2 py-0">
                     x
                   </button>
                </form>
                @endif
            </td>
        </tr>

        @endforeach
    </x-table>

    {{ $orders->links() }}
</div>
@endsection
