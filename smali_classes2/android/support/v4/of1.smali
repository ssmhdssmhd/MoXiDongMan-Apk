.class public final Landroid/support/v4/of1;
.super Landroid/support/v4/oc1;
.source "SourceFile"


# instance fields
.field private final for:Ljava/lang/String;

.field private final if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p1}, Landroid/support/v4/of1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/google/zxing/client/result/else;->PRODUCT:Lcom/google/zxing/client/result/else;

    invoke-direct {p0, v0}, Landroid/support/v4/oc1;-><init>(Lcom/google/zxing/client/result/else;)V

    .line 3
    iput-object p1, p0, Landroid/support/v4/of1;->if:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Landroid/support/v4/of1;->for:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/of1;->if:Ljava/lang/String;

    return-object v0
.end method

.method public do()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/of1;->if:Ljava/lang/String;

    return-object v0
.end method

.method public try()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/of1;->for:Ljava/lang/String;

    return-object v0
.end method
