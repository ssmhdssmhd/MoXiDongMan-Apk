.class public final Lorg/bouncycastle/jcajce/provider/symmetric/do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/symmetric/do$if;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$for;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$new;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$try;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$case;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$else;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$goto;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$this;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$break;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$catch;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$class;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$const;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$final;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$super;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$throw;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$public;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$while;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$import;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$native;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$return;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$static;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$switch;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$throws;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$default;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$extends;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$finally;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$package;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$private;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$abstract;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$continue;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$strictfp;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$volatile;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$interface;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$protected;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$transient;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$implements;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$instanceof;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$synchronized;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$a;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$b;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$c;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$d;,
        Lorg/bouncycastle/jcajce/provider/symmetric/do$e;
    }
.end annotation


# static fields
.field private static final do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/do;->do:Ljava/util/Map;

    const-string v1, "SupportedKeyClasses"

    const-string v2, "javax.crypto.SecretKey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SupportedKeyFormats"

    const-string v2, "RAW"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do()Ljava/util/Map;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/do;->do:Ljava/util/Map;

    return-object v0
.end method
