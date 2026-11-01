.class public final Landroid/support/v4/zy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;


# static fields
.field private static final for:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/support/v4/zy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final do:I

.field private final if:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SHA-256"

    const/16 v2, 0x20

    const/16 v3, 0x10

    const/16 v4, 0x43

    const/16 v5, 0xa

    invoke-static {v1, v2, v3, v4, v5}, Landroid/support/v4/zy;->do(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/support/v4/zy;

    const v8, 0x1000001

    const-string v9, "XMSS_SHA2-256_W16_H10"

    invoke-direct {v7, v8, v9}, Landroid/support/v4/zy;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4, v3}, Landroid/support/v4/zy;->do(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/support/v4/zy;

    const v8, 0x2000002

    const-string v9, "XMSS_SHA2-256_W16_H16"

    invoke-direct {v7, v8, v9}, Landroid/support/v4/zy;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x14

    invoke-static {v1, v2, v3, v4, v6}, Landroid/support/v4/zy;->do(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Landroid/support/v4/zy;

    const v8, 0x3000003

    const-string v9, "XMSS_SHA2-256_W16_H20"

    invoke-direct {v7, v8, v9}, Landroid/support/v4/zy;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA-512"

    const/16 v7, 0x40

    const/16 v8, 0x83

    invoke-static {v1, v7, v3, v8, v5}, Landroid/support/v4/zy;->do(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Landroid/support/v4/zy;

    const v11, 0x4000004

    const-string v12, "XMSS_SHA2-512_W16_H10"

    invoke-direct {v10, v11, v12}, Landroid/support/v4/zy;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v7, v3, v8, v3}, Landroid/support/v4/zy;->do(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Landroid/support/v4/zy;

    const v11, 0x5000005

    const-string v12, "XMSS_SHA2-512_W16_H16"

    invoke-direct {v10, v11, v12}, Landroid/support/v4/zy;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v7, v3, v8, v6}, Landroid/support/v4/zy;->do(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Landroid/support/v4/zy;

    const v10, 0x6000006

    const-string v11, "XMSS_SHA2-512_W16_H20"

    invoke-direct {v9, v10, v11}, Landroid/support/v4/zy;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHAKE128"

    invoke-static {v1, v2, v3, v4, v5}, Landroid/support/v4/zy;->do(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Landroid/support/v4/zy;

    const v11, 0x7000007

    const-string v12, "XMSS_SHAKE128_W16_H10"

    invoke-direct {v10, v11, v12}, Landroid/support/v4/zy;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4, v3}, Landroid/support/v4/zy;->do(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Landroid/support/v4/zy;

    const v11, 0x8000008

    const-string v12, "XMSS_SHAKE128_W16_H16"

    invoke-direct {v10, v11, v12}, Landroid/support/v4/zy;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4, v6}, Landroid/support/v4/zy;->do(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/support/v4/zy;

    const v4, 0x9000009

    const-string v9, "XMSS_SHAKE128_W16_H20"

    invoke-direct {v2, v4, v9}, Landroid/support/v4/zy;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHAKE256"

    invoke-static {v1, v7, v3, v8, v5}, Landroid/support/v4/zy;->do(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/support/v4/zy;

    const v5, 0xa00000a

    const-string v9, "XMSS_SHAKE256_W16_H10"

    invoke-direct {v4, v5, v9}, Landroid/support/v4/zy;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v7, v3, v8, v3}, Landroid/support/v4/zy;->do(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/support/v4/zy;

    const v5, 0xb00000b

    const-string v9, "XMSS_SHAKE256_W16_H16"

    invoke-direct {v4, v5, v9}, Landroid/support/v4/zy;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v7, v3, v8, v6}, Landroid/support/v4/zy;->do(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/support/v4/zy;

    const v3, 0xc00000c

    const-string v4, "XMSS_SHAKE256_W16_H20"

    invoke-direct {v2, v3, v4}, Landroid/support/v4/zy;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/support/v4/zy;->for:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/zy;->do:I

    iput-object p2, p0, Landroid/support/v4/zy;->if:Ljava/lang/String;

    return-void
.end method

.method private static do(Ljava/lang/String;IIII)Ljava/lang/String;
    .locals 1

    const-string v0, "algorithmName == null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static if(Ljava/lang/String;IIII)Landroid/support/v4/zy;
    .locals 1

    const-string v0, "algorithmName == null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/zy;->for:Ljava/util/Map;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v4/zy;->do(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/zy;

    return-object p0
.end method


# virtual methods
.method public getOid()I
    .locals 1

    iget v0, p0, Landroid/support/v4/zy;->do:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zy;->if:Ljava/lang/String;

    return-object v0
.end method
