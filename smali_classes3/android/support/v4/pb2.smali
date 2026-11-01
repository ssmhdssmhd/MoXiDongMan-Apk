.class public Landroid/support/v4/pb2;
.super Landroid/support/v4/tm;
.source "SourceFile"


# instance fields
.field private final do:I

.field private final for:Z

.field private final if:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    .line 1
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/pb2;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/support/v4/tm;-><init>()V

    .line 3
    iput p1, p0, Landroid/support/v4/pb2;->do:I

    .line 4
    iput p2, p0, Landroid/support/v4/pb2;->if:I

    .line 5
    iput-boolean p3, p0, Landroid/support/v4/pb2;->for:Z

    return-void
.end method

.method public static break(II)Landroid/support/v4/pb2;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/pb2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/support/v4/pb2;-><init>(IIZ)V

    return-object v0
.end method

.method public static else(I)Landroid/support/v4/pb2;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0}, Landroid/support/v4/pb2;->break(II)Landroid/support/v4/pb2;

    move-result-object p0

    return-object p0
.end method

.method public static goto(I)Landroid/support/v4/pb2;
    .locals 1

    const v0, 0x7fffffff

    .line 1
    invoke-static {p0, v0}, Landroid/support/v4/pb2;->break(II)Landroid/support/v4/pb2;

    move-result-object p0

    return-object p0
.end method

.method public static this(II)Landroid/support/v4/pb2;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/pb2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/support/v4/pb2;-><init>(IIZ)V

    return-object v0
.end method


# virtual methods
.method public case(ILjava/io/Writer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/pb2;->for:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Landroid/support/v4/pb2;->do:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/support/v4/pb2;->if:I

    if-le p1, v0, :cond_2

    :cond_0
    return v1

    .line 3
    :cond_1
    iget v0, p0, Landroid/support/v4/pb2;->do:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Landroid/support/v4/pb2;->if:I

    if-gt p1, v0, :cond_2

    return v1

    :cond_2
    const v0, 0xffff

    if-le p1, v0, :cond_3

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/v4/pb2;->catch(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0xfff

    if-le p1, v0, :cond_4

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/support/v4/rk;->do(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v0, 0xff

    if-le p1, v0, :cond_5

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/support/v4/rk;->do(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/16 v0, 0xf

    if-le p1, v0, :cond_6

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/support/v4/rk;->do(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/support/v4/rk;->do(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public catch(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/support/v4/rk;->do(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
