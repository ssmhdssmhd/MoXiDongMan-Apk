.class abstract Lcom/google/zxing/aztec/encoder/try;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final if:Lcom/google/zxing/aztec/encoder/try;


# instance fields
.field private final do:Lcom/google/zxing/aztec/encoder/try;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/zxing/aztec/encoder/for;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/zxing/aztec/encoder/for;-><init>(Lcom/google/zxing/aztec/encoder/try;II)V

    sput-object v0, Lcom/google/zxing/aztec/encoder/try;->if:Lcom/google/zxing/aztec/encoder/try;

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/aztec/encoder/try;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/try;->do:Lcom/google/zxing/aztec/encoder/try;

    return-void
.end method


# virtual methods
.method public final do(II)Lcom/google/zxing/aztec/encoder/try;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/zxing/aztec/encoder/for;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/zxing/aztec/encoder/for;-><init>(Lcom/google/zxing/aztec/encoder/try;II)V

    return-object v0
.end method

.method public abstract for(Landroid/support/v4/w8;[B)V
.end method

.method public final if(II)Lcom/google/zxing/aztec/encoder/try;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/zxing/aztec/encoder/do;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/zxing/aztec/encoder/do;-><init>(Lcom/google/zxing/aztec/encoder/try;II)V

    return-object v0
.end method

.method public final new()Lcom/google/zxing/aztec/encoder/try;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/try;->do:Lcom/google/zxing/aztec/encoder/try;

    return-object v0
.end method
