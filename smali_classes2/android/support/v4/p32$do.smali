.class public Landroid/support/v4/p32$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/p32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private do:Ljava/lang/String;

.field private for:Ljava/lang/String;

.field private if:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;[I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/p32$do;->do:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroid/support/v4/p32$do;->if:[I

    const/4 v0, 0x0

    .line 4
    aget v0, p2, v0

    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/p32$do;->for:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/p32$do;->for:Ljava/lang/String;

    return-object v0
.end method

.method public for()[I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/p32$do;->if:[I

    return-object v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/p32$do;->do:Ljava/lang/String;

    return-object v0
.end method

.method public new(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/p32$do;->do:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Landroid/support/v4/p32$do;->if:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    const/4 v3, 0x1

    aget v5, v1, v3

    if-le v5, v4, :cond_0

    aget v4, v1, v2

    aget v5, v1, v3

    if-gt v4, v5, :cond_0

    .line 3
    aget v2, v1, v2

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1, p1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-object p1, p0, Landroid/support/v4/p32$do;->do:Ljava/lang/String;

    return-object p1
.end method
