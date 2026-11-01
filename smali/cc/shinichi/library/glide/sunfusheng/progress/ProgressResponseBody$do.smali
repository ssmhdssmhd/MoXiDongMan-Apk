.class Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do;
.super Lokio/ForwardingSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;->new(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public do:J

.field public final synthetic for:Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;

.field public if:J


# direct methods
.method public constructor <init>(Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;Lokio/Source;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do;->for:Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 4
    .param p1    # Lokio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p1

    .line 2
    iget-wide v0, p0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do;->do:J

    const-wide/16 v2, -0x1

    cmp-long p3, p1, v2

    if-nez p3, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    add-long/2addr v0, v2

    iput-wide v0, p0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do;->do:J

    .line 3
    iget-object p3, p0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do;->for:Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;

    invoke-static {p3}, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;->do(Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;)Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$InternalProgressListener;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-wide v0, p0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do;->if:J

    iget-wide v2, p0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do;->do:J

    cmp-long p3, v0, v2

    if-eqz p3, :cond_1

    .line 4
    iput-wide v2, p0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do;->if:J

    .line 5
    invoke-static {}, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;->for()Landroid/os/Handler;

    move-result-object p3

    new-instance v0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do$do;

    invoke-direct {v0, p0}, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do$do;-><init>(Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-wide p1
.end method
