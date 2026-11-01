.class Lcom/wsw/cospa/utils/download/for$do;
.super Lokio/ForwardingSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/utils/download/for;->for(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public do:J

.field public final synthetic if:Lcom/wsw/cospa/utils/download/for;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/utils/download/for;Lokio/Source;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/download/for$do;->if:Lcom/wsw/cospa/utils/download/for;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lcom/wsw/cospa/utils/download/for$do;->do:J

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p1

    .line 2
    iget-wide v0, p0, Lcom/wsw/cospa/utils/download/for$do;->do:J

    const-wide/16 v2, -0x1

    cmp-long p3, p1, v2

    if-eqz p3, :cond_0

    move-wide v4, p1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/wsw/cospa/utils/download/for$do;->do:J

    .line 3
    iget-object p3, p0, Lcom/wsw/cospa/utils/download/for$do;->if:Lcom/wsw/cospa/utils/download/for;

    invoke-static {p3}, Lcom/wsw/cospa/utils/download/for;->do(Lcom/wsw/cospa/utils/download/for;)Lcom/wsw/cospa/utils/download/ProgressResponseListener;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 4
    iget-object p3, p0, Lcom/wsw/cospa/utils/download/for$do;->if:Lcom/wsw/cospa/utils/download/for;

    invoke-static {p3}, Lcom/wsw/cospa/utils/download/for;->do(Lcom/wsw/cospa/utils/download/for;)Lcom/wsw/cospa/utils/download/ProgressResponseListener;

    move-result-object v4

    iget-wide v5, p0, Lcom/wsw/cospa/utils/download/for$do;->do:J

    iget-object p3, p0, Lcom/wsw/cospa/utils/download/for$do;->if:Lcom/wsw/cospa/utils/download/for;

    invoke-static {p3}, Lcom/wsw/cospa/utils/download/for;->if(Lcom/wsw/cospa/utils/download/for;)Lokhttp3/ResponseBody;

    move-result-object p3

    invoke-virtual {p3}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v7

    cmp-long p3, p1, v2

    if-nez p3, :cond_1

    const/4 p3, 0x1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    const/4 v9, 0x0

    :goto_1
    invoke-interface/range {v4 .. v9}, Lcom/wsw/cospa/utils/download/ProgressResponseListener;->onResponseProgress(JJZ)V

    :cond_2
    return-wide p1
.end method
