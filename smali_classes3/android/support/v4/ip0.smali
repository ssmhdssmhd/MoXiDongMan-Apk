.class public Landroid/support/v4/ip0;
.super Landroid/support/v4/pb2;
.source "SourceFile"


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/pb2;-><init>(IIZ)V

    return-void
.end method

.method public static class(I)Landroid/support/v4/ip0;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0}, Landroid/support/v4/ip0;->super(II)Landroid/support/v4/ip0;

    move-result-object p0

    return-object p0
.end method

.method public static const(I)Landroid/support/v4/ip0;
    .locals 1

    const v0, 0x7fffffff

    .line 1
    invoke-static {p0, v0}, Landroid/support/v4/ip0;->super(II)Landroid/support/v4/ip0;

    move-result-object p0

    return-object p0
.end method

.method public static final(II)Landroid/support/v4/ip0;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/ip0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/support/v4/ip0;-><init>(IIZ)V

    return-object v0
.end method

.method public static super(II)Landroid/support/v4/ip0;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/ip0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/support/v4/ip0;-><init>(IIZ)V

    return-object v0
.end method


# virtual methods
.method public catch(I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-char v2, p1, v2

    invoke-static {v2}, Landroid/support/v4/rk;->do(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-char p1, p1, v1

    invoke-static {p1}, Landroid/support/v4/rk;->do(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
