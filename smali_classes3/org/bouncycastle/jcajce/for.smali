.class public Lorg/bouncycastle/jcajce/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/cert/CertPathParameters;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/for$if;
    }
.end annotation


# instance fields
.field private final do:Lorg/bouncycastle/jcajce/new;

.field private final for:I

.field private final if:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/bouncycastle/jcajce/for$if;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/jcajce/for$if;->do(Lorg/bouncycastle/jcajce/for$if;)Lorg/bouncycastle/jcajce/new;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/for;->do:Lorg/bouncycastle/jcajce/new;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/for$if;->if(Lorg/bouncycastle/jcajce/for$if;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/for;->if:Ljava/util/Set;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/for$if;->for(Lorg/bouncycastle/jcajce/for$if;)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/for;->for:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/jcajce/for$if;Lorg/bouncycastle/jcajce/for$do;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/for;-><init>(Lorg/bouncycastle/jcajce/for$if;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public do()Lorg/bouncycastle/jcajce/new;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/for;->do:Lorg/bouncycastle/jcajce/new;

    return-object v0
.end method

.method public for()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jcajce/for;->for:I

    return v0
.end method

.method public if()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/for;->if:Ljava/util/Set;

    return-object v0
.end method
