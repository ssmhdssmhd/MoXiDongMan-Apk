.class Lcom/google/zxing/aztec/encoder/if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/zxing/aztec/encoder/if;->do()Landroid/support/v4/w8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/zxing/aztec/encoder/new;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/zxing/aztec/encoder/if;


# direct methods
.method public constructor <init>(Lcom/google/zxing/aztec/encoder/if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/if$do;->do:Lcom/google/zxing/aztec/encoder/if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/zxing/aztec/encoder/new;

    check-cast p2, Lcom/google/zxing/aztec/encoder/new;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/aztec/encoder/if$do;->do(Lcom/google/zxing/aztec/encoder/new;Lcom/google/zxing/aztec/encoder/new;)I

    move-result p1

    return p1
.end method

.method public do(Lcom/google/zxing/aztec/encoder/new;Lcom/google/zxing/aztec/encoder/new;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/new;->new()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/zxing/aztec/encoder/new;->new()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
