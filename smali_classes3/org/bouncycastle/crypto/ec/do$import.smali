.class final Lorg/bouncycastle/crypto/ec/do$import;
.super Landroid/support/v4/uh2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/ec/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/uh2;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Landroid/support/v4/th2;
    .locals 7

    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/default;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/custom/sec/default;-><init>()V

    invoke-static {v0}, Lorg/bouncycastle/crypto/ec/do;->do(Lorg/bouncycastle/math/ec/if;)Lorg/bouncycastle/math/ec/if;

    move-result-object v2

    new-instance v3, Landroid/support/v4/vh2;

    const-string v0, "040503213F78CA44883F1A3B8162F188E553CD265F23C1567A16876913B0C2AC245849283601CCDA380F1C9E318D90F95D07E5426FE87E45C0E8184698E45962364E34116177DD2259"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/for;->if(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v3, v2, v0}, Landroid/support/v4/vh2;-><init>(Lorg/bouncycastle/math/ec/if;[B)V

    new-instance v0, Landroid/support/v4/th2;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/if;->extends()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/if;->native()Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/th2;-><init>(Lorg/bouncycastle/math/ec/if;Landroid/support/v4/vh2;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
