.class public final enum Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HmacSHA3_512:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

.field public static final enum HmacSHA512:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

.field private static final synthetic do:[Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    const-string v1, "HmacSHA512"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;->HmacSHA512:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    new-instance v1, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    const-string v3, "HmacSHA3_512"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;->HmacSHA3_512:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;->do:[Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;
    .locals 1

    const-class v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;->do:[Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    invoke-virtual {v0}, [Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    return-object v0
.end method
