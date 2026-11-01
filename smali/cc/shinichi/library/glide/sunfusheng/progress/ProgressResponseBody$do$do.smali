.class Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do;->read(Lokio/Buffer;J)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do;


# direct methods
.method public constructor <init>(Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do$do;->do:Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do$do;->do:Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do;

    iget-object v0, v0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do;->for:Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;

    invoke-static {v0}, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;->do(Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;)Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$InternalProgressListener;

    move-result-object v1

    iget-object v0, p0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do$do;->do:Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do;

    iget-object v0, v0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do;->for:Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;

    invoke-static {v0}, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;->if(Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do$do;->do:Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do;

    iget-wide v3, v0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do;->do:J

    iget-object v0, v0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do;->for:Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;

    invoke-virtual {v0}, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;->contentLength()J

    move-result-wide v5

    invoke-interface/range {v1 .. v6}, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$InternalProgressListener;->onProgress(Ljava/lang/String;JJ)V

    return-void
.end method
