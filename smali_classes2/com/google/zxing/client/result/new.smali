.class public final Lcom/google/zxing/client/result/new;
.super Lcom/google/zxing/client/result/do;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/client/result/do;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic catch(Landroid/support/v4/wn1;)Landroid/support/v4/oc1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/new;->native(Landroid/support/v4/wn1;)Landroid/support/v4/xa2;

    move-result-object p1

    return-object p1
.end method

.method public native(Landroid/support/v4/wn1;)Landroid/support/v4/xa2;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/wn1;->else()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MEBKM:"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "TITLE:"

    const/4 v2, 0x1

    .line 3
    invoke-static {v0, p1, v2}, Lcom/google/zxing/client/result/do;->import(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v3, "URL:"

    .line 4
    invoke-static {v3, p1, v2}, Lcom/google/zxing/client/result/do;->while(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x0

    .line 5
    aget-object p1, p1, v2

    .line 6
    invoke-static {p1}, Landroid/support/v4/ya2;->while(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Landroid/support/v4/xa2;

    invoke-direct {v1, p1, v0}, Landroid/support/v4/xa2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method
