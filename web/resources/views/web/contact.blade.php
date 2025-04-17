@extends('web.layout.master')

@section('content')
    <section class="section wb">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="page-wrapper">
                        <div class="row">
                            @if(session('success'))
                                <div class="col-lg-12">
                                    <div class="alert alert-success">
                                        {{ session('success') }}
                                    </div>
                                </div>
                            @endif
                            @if ($errors->any())
                                <div class="col-lg-12">
                                    <div class="alert alert-danger">
                                        <ul>
                                            @foreach ($errors->all() as $error)
                                                <li>{{ $error }}</li>
                                            @endforeach
                                        </ul>
                                    </div>
                                </div>
                            @endif
                            <div class="col-lg-5">
                                <h4>Chúng tôi là ai?</h4>
                                <p>Chào mừng bạn đến với <strong>Tech News</strong> - nơi cập nhật những tin tức mới nhất về công nghệ, khoa học, điện tử và các xu hướng phát triển trong ngành. Chúng tôi cung cấp thông tin chính xác, nhanh chóng và đáng tin cậy cho người đọc trên toàn thế giới.</p>

                                <h4>Chúng tôi giúp gì cho bạn?</h4>
                                <p>Tech News luôn đồng hành cùng bạn trong việc cung cấp những tin tức công nghệ nóng hổi, bài viết phân tích chuyên sâu và các bản tin về sự kiện nổi bật trong ngành. Chúng tôi mong muốn nhận được phản hồi của bạn để cải thiện nội dung, dịch vụ của mình và mang đến trải nghiệm tốt nhất cho bạn.</p>

                                <h4>Câu hỏi và Phản hồi</h4>
                                <p>Chúng tôi luôn chào đón những câu hỏi, ý kiến đóng góp hoặc các yêu cầu hợp tác từ bạn. Dù bạn có thắc mắc về một bài viết, muốn chia sẻ câu chuyện của mình, hay đơn giản là muốn trao đổi về một vấn đề trong ngành công nghệ, hãy gửi tin nhắn cho chúng tôi.</p>
                            </div>
                            <div class="col-lg-7">
                                <form class="form-wrapper" action="{{ route('web.contact.store') }}" method="post">
                                    @csrf
                                    <input type="text" name="name" class="form-control" placeholder="Your name">
                                    <input type="text" name="address" class="form-control" placeholder="Email address">
                                    <input type="text" name="phone" class="form-control" placeholder="Phone">
                                    <input type="text" name="subject" class="form-control" placeholder="Subject">
                                    <textarea class="form-control" name="message" placeholder="Your message"></textarea>
                                    <button type="submit" class="btn btn-primary">Send <i class="fa fa-envelope-open-o"></i></button>
                                </form>
                            </div>
                        </div>
                    </div><!-- end page-wrapper -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </section>
@endsection
