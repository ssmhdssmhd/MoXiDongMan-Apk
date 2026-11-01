.class public final Landroid/support/v4/pf1;
.super Landroid/support/v4/xn1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/xn1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic catch(Landroid/support/v4/wn1;)Landroid/support/v4/oc1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/pf1;->while(Landroid/support/v4/wn1;)Landroid/support/v4/of1;

    move-result-object p1

    return-object p1
.end method

.method public while(Landroid/support/v4/wn1;)Landroid/support/v4/of1;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/wn1;->if()Lcom/google/zxing/do;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/google/zxing/do;->UPC_A:Lcom/google/zxing/do;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/zxing/do;->UPC_E:Lcom/google/zxing/do;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/zxing/do;->EAN_8:Lcom/google/zxing/do;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/zxing/do;->EAN_13:Lcom/google/zxing/do;

    if-eq v0, v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/support/v4/xn1;->for(Landroid/support/v4/wn1;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v1}, Landroid/support/v4/xn1;->new(Ljava/lang/CharSequence;I)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    .line 5
    :cond_1
    sget-object v1, Lcom/google/zxing/do;->UPC_E:Lcom/google/zxing/do;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 6
    invoke-static {p1}, Lcom/google/zxing/oned/default;->while(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 7
    :goto_0
    new-instance v1, Landroid/support/v4/of1;

    invoke-direct {v1, p1, v0}, Landroid/support/v4/of1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
