.class public final Landroid/support/v4/e52;
.super Landroid/support/v4/oc1;
.source "SourceFile"


# instance fields
.field private final for:Ljava/lang/String;

.field private final if:Ljava/lang/String;

.field private final new:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/client/result/else;->TEL:Lcom/google/zxing/client/result/else;

    invoke-direct {p0, v0}, Landroid/support/v4/oc1;-><init>(Lcom/google/zxing/client/result/else;)V

    .line 2
    iput-object p1, p0, Landroid/support/v4/e52;->if:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroid/support/v4/e52;->for:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Landroid/support/v4/e52;->new:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/e52;->for:Ljava/lang/String;

    return-object v0
.end method

.method public do()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget-object v1, p0, Landroid/support/v4/e52;->if:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v4/oc1;->for(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3
    iget-object v1, p0, Landroid/support/v4/e52;->new:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v4/oc1;->for(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public else()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/e52;->new:Ljava/lang/String;

    return-object v0
.end method

.method public try()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/e52;->if:Ljava/lang/String;

    return-object v0
.end method
