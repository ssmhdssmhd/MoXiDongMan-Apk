.class final Lcom/google/zxing/oned/switch;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final for:[I


# instance fields
.field private final do:Lcom/google/zxing/oned/return;

.field private final if:Lcom/google/zxing/oned/static;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/switch;->for:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/zxing/oned/return;

    invoke-direct {v0}, Lcom/google/zxing/oned/return;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/switch;->do:Lcom/google/zxing/oned/return;

    .line 3
    new-instance v0, Lcom/google/zxing/oned/static;

    invoke-direct {v0}, Lcom/google/zxing/oned/static;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/switch;->if:Lcom/google/zxing/oned/static;

    return-void
.end method


# virtual methods
.method public do(ILandroid/support/v4/w8;I)Landroid/support/v4/wn1;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/zxing/oned/switch;->for:[I

    const/4 v1, 0x0

    invoke-static {p2, p3, v1, v0}, Lcom/google/zxing/oned/throws;->class(Landroid/support/v4/w8;IZ[I)[I

    move-result-object p3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/oned/switch;->if:Lcom/google/zxing/oned/static;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/zxing/oned/static;->if(ILandroid/support/v4/w8;[I)Landroid/support/v4/wn1;

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/kl1; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 3
    :catch_0
    iget-object v0, p0, Lcom/google/zxing/oned/switch;->do:Lcom/google/zxing/oned/return;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/zxing/oned/return;->if(ILandroid/support/v4/w8;[I)Landroid/support/v4/wn1;

    move-result-object p1

    return-object p1
.end method
