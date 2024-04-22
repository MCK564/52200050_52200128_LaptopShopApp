@extends('dashboard')
@section('title','Order lists')

@section('content')

<div class="mb-4 border-b border-gray-200 dark:border-gray-700">
    <ul class="flex flex-wrap -mb-px text-sm font-medium text-center" id="default-tab" data-tabs-toggle="#default-tab-content" role="tablist">
        <li class="me-2" role="presentation">
            <button class="inline-block p-4 border-b-2 rounded-t-lg" id="all-tab" data-tabs-target="#all" type="button" role="tab" aria-controls="all" aria-selected="false">All</button>
        </li>
        <li class="me-2" role="presentation">
            <button class="inline-block p-4 border-b-2 rounded-t-lg hover:text-gray-600 hover:border-gray-300 dark:hover:text-gray-300" id="pending-tab" data-tabs-target="#pending" type="button" role="tab" aria-controls="pending" aria-selected="false">Pending</button>
        </li>
        <li class="me-2" role="presentation">
            <button class="inline-block p-4 border-b-2 rounded-t-lg hover:text-gray-600 hover:border-gray-300 dark:hover:text-gray-300" id="processing-tab" data-tabs-target="#processing" type="button" role="tab" aria-controls="processing" aria-selected="false">Processing</button>
        </li>
        <li class="me-2" role="presentation">
            <button class="inline-block p-4 border-b-2 rounded-t-lg hover:text-gray-600 hover:border-gray-300 dark:hover:text-gray-300" id="delivered-tab" data-tabs-target="#delivered" type="button" role="tab" aria-controls="delivered" aria-selected="false">Delivered</button>
        </li>
        <li class="me-2" role="presentation">
            <button class="inline-block p-4 border-b-2 rounded-t-lg hover:text-gray-600 hover:border-gray-300 dark:hover:text-gray-300" id="received-tab" data-tabs-target="#received" type="button" role="tab" aria-controls="received" aria-selected="false">Received</button>
        </li>
        <li role="presentation">
            <button class="inline-block p-4 border-b-2 rounded-t-lg hover:text-gray-600 hover:border-gray-300 dark:hover:text-gray-300" id="cancel-tab" data-tabs-target="#cancel" type="button" role="tab" aria-controls="cancel" aria-selected="false">Cancel</button>
        </li>
    </ul>
</div>
<div id="default-tab-content">
    <div class="hidden p-4 rounded-lg bg-gray-50 dark:bg-gray-800" id="all" role="tabpanel" aria-labelledby="all-tab">
        @include('order_table_module', ['orders' => $orders])
    </div>
    <div class="hidden p-4 rounded-lg bg-gray-50 dark:bg-gray-800" id="pending" role="tabpanel" aria-labelledby="pending-tab">
        @include('order_table_module', ['orders' => getOrderListByStatus('pending')])
    </div>
    <div class="hidden p-4 rounded-lg bg-gray-50 dark:bg-gray-800" id="processing" role="tabpanel" aria-labelledby="processing-tab">
        @include('order_table_module', ['orders' => getOrderListByStatus('processing')])
    </div>
    <div class="hidden p-4 rounded-lg bg-gray-50 dark:bg-gray-800" id="delivered" role="tabpanel" aria-labelledby="delivered-tab">
        @include('order_table_module', ['orders' => getOrderListByStatus('delivered')])
    </div>
    <div class="hidden p-4 rounded-lg bg-gray-50 dark:bg-gray-800" id="received" role="tabpanel" aria-labelledby="received-tab">
        @include('order_table_module', ['orders' => getOrderListByStatus('received')])
    </div>
    <div class="hidden p-4 rounded-lg bg-gray-50 dark:bg-gray-800" id="cancel" role="tabpanel" aria-labelledby="cancel-tab">
        @include('order_table_module', ['orders' => getOrderListByStatus('cancelled')])
    </div>
</div>

@endsection

@php
use App\Models\Order;
use Illuminate\Support\Facades\Auth;

function getOrderListByStatus($status) {
    return Order::where('status', $status)
    ->where('user_id',Auth::id())
    ->get();
}
@endphp
