.class public Landroid/support/v4/oa1;
.super Lorg/bouncycastle/asn1/instanceof;
.source "SourceFile"


# static fields
.field public static final a:I = 0x4000

.field public static final abstract:I = 0x20000000

.field public static final b:I = 0x200

.field public static final break:I = 0x2

.field public static final c:I = 0x100

.field public static final case:I = 0x20

.field public static final catch:I = 0x1

.field public static final class:I = 0x8000

.field public static final const:I = 0x4000

.field public static final continue:I = 0x80

.field public static final d:I = 0x800000

.field public static final default:I = 0x40000

.field public static final e:I = 0x400000

.field public static final else:I = 0x10

.field public static final extends:I = 0x20000

.field public static final f:I = 0x40000000

.field public static final final:I = 0x2000

.field public static final finally:I = 0x10000

.field public static final goto:I = 0x8

.field public static final implements:I = 0x2

.field public static final import:I = 0x200

.field public static final instanceof:I = 0x1

.field public static final interface:I = 0x10

.field public static final native:I = 0x100

.field public static final new:I = 0x80

.field public static final package:I = -0x80000000

.field public static final private:I = 0x40000000

.field public static final protected:I = 0x8

.field public static final public:I = 0x800000

.field public static final return:I = 0x400000

.field public static final static:I = 0x200000

.field public static final strictfp:I = 0x40

.field public static final super:I = 0x1000

.field public static final switch:I = 0x100000

.field public static final synchronized:I = 0x8000

.field public static final this:I = 0x4

.field public static final throw:I = 0x800

.field public static final throws:I = 0x80000

.field public static final transient:I = 0x4

.field public static final try:I = 0x40

.field public static final volatile:I = 0x20

.field public static final while:I = 0x400


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/asn1/if;->final(I)[B

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/asn1/if;->while(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/instanceof;-><init>([BI)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/instanceof;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/if;->const()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/if;->throw()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/instanceof;-><init>([BI)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PKIFailureInfo: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/if;->import()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
