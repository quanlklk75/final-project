@extends('backend.master')

@section("title-page", "News management")
@section("title-description", "News list")
@section('content')
    <?php $open = "posts"?>
    <div class="row">
        <div class="col-md-12">
            @include("messages")
            <div class="form-group">
                <a href="{{ route("posts.get_add") }}" class="btn btn-primary">Create</a>
            </div>
            <div class="table-responsive text-center">
                <div class="form-group">
                    <input class="form-control" id="myInput" type="text" placeholder="Search..">

                </div>
                <table id="product_table" class="table">
                    <thead>
                    <tr>
                        <th>#</th>

                        <th>Image</th>
                        <th>Title</th>
                        <th>Date writing</th>

                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody id="myTable">

                    @foreach($posts as $item)
                        <tr class="text-left">
                            <td>
                                {{ $item->id }}
                            </td>
                            <td>
                                <img class="img-fluid" src="{{ asset("uploads/posts/".$item->image) }}" alt=""
                                     style="width: 100px; height: 80px">
                            </td>
                            <td>{{ $item->title }}</td>

                            <td>{{  date('d/m/Y', strtotime($item->created_at))}}</td>
                            <td>

                                <a href="{{ route("posts.get_edit", $item->id) }}" class="btn btn-xs btn-primary"><i
                                        class="fa fa-edit"></i> Edit</a>
                                <a onclick="return confirm('You definitely want to delete ? ')"
                                   href="{{ route("posts.delete", $item->id) }}" class="btn btn-xs  btn-danger"><i
                                        class="fa fa-trash"></i> Delete</a>
                            </td>


                        </tr>
                    @endforeach

                    </tbody>
                </table>

                {{ $posts->links() }}
            </div>
        </div>
    </div>

@endsection
@section("script")
    <script>
        $(document).ready(function () {
            $("#myInput").on("keyup", function () {
                var value = $(this).val().toLowerCase();
                $("#myTable tr").filter(function () {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });

        $(function () {
            $('.toggle-class').change(function () {
                var status = $(this).prop('checked') == true ? 1 : 0;
                var post_id = $(this).data('id');

                $.ajax({
                    type: "GET",
                    dataType: "json",
                    url: "{{  route("posts.change_status")}}",
                    data: {'status': status, 'post_id': post_id},
                    success: function (data) {
                        console.log(data.success)
                    }
                });
            });
        });
    </script>
@endsection
