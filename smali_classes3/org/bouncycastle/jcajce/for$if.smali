.class public Lorg/bouncycastle/jcajce/for$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private final do:Lorg/bouncycastle/jcajce/new;

.field private for:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private if:I


# direct methods
.method public constructor <init>(Ljava/security/cert/PKIXBuilderParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lorg/bouncycastle/jcajce/for$if;->if:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/for$if;->for:Ljava/util/Set;

    new-instance v0, Lorg/bouncycastle/jcajce/new$if;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/new$if;-><init>(Ljava/security/cert/PKIXParameters;)V

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/new$if;->throw()Lorg/bouncycastle/jcajce/new;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/for$if;->do:Lorg/bouncycastle/jcajce/new;

    invoke-virtual {p1}, Ljava/security/cert/PKIXBuilderParameters;->getMaxPathLength()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/for$if;->if:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/new;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lorg/bouncycastle/jcajce/for$if;->if:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/for$if;->for:Ljava/util/Set;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/for$if;->do:Lorg/bouncycastle/jcajce/new;

    return-void
.end method

.method public static synthetic do(Lorg/bouncycastle/jcajce/for$if;)Lorg/bouncycastle/jcajce/new;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/for$if;->do:Lorg/bouncycastle/jcajce/new;

    return-object p0
.end method

.method public static synthetic for(Lorg/bouncycastle/jcajce/for$if;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jcajce/for$if;->if:I

    return p0
.end method

.method public static synthetic if(Lorg/bouncycastle/jcajce/for$if;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/for$if;->for:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public case(I)Lorg/bouncycastle/jcajce/for$if;
    .locals 1

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, Lorg/bouncycastle/jcajce/for$if;->if:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "The maximum path length parameter can not be less than -1."

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public new(Ljava/util/Set;)Lorg/bouncycastle/jcajce/for$if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Lorg/bouncycastle/jcajce/for$if;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/for$if;->for:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public try()Lorg/bouncycastle/jcajce/for;
    .locals 2

    new-instance v0, Lorg/bouncycastle/jcajce/for;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/jcajce/for;-><init>(Lorg/bouncycastle/jcajce/for$if;Lorg/bouncycastle/jcajce/for$do;)V

    return-object v0
.end method
