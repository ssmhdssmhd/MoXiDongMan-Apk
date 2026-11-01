.class public Lorg/bouncycastle/jcajce/new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/cert/CertPathParameters;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/new$if;
    }
.end annotation


# static fields
.field public static final class:I = 0x0

.field public static final const:I = 0x1


# instance fields
.field private final break:I

.field private final case:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation
.end field

.field private final catch:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private final do:Ljava/security/cert/PKIXParameters;

.field private final else:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/support/v4/tg0;",
            "Lorg/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation
.end field

.field private final for:Ljava/util/Date;

.field private final goto:Z

.field private final if:Lorg/bouncycastle/jcajce/if;

.field private final new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation
.end field

.field private final this:Z

.field private final try:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/support/v4/tg0;",
            "Lorg/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/bouncycastle/jcajce/new$if;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/jcajce/new$if;->do(Lorg/bouncycastle/jcajce/new$if;)Ljava/security/cert/PKIXParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/new;->do:Ljava/security/cert/PKIXParameters;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/new$if;->if(Lorg/bouncycastle/jcajce/new$if;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/new;->for:Ljava/util/Date;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/new$if;->for(Lorg/bouncycastle/jcajce/new$if;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/new;->new:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/new$if;->new(Lorg/bouncycastle/jcajce/new$if;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/new;->try:Ljava/util/Map;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/new$if;->try(Lorg/bouncycastle/jcajce/new$if;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/new;->case:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/new$if;->case(Lorg/bouncycastle/jcajce/new$if;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/new;->else:Ljava/util/Map;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/new$if;->else(Lorg/bouncycastle/jcajce/new$if;)Lorg/bouncycastle/jcajce/if;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/new;->if:Lorg/bouncycastle/jcajce/if;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/new$if;->goto(Lorg/bouncycastle/jcajce/new$if;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/new;->goto:Z

    invoke-static {p1}, Lorg/bouncycastle/jcajce/new$if;->this(Lorg/bouncycastle/jcajce/new$if;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/new;->this:Z

    invoke-static {p1}, Lorg/bouncycastle/jcajce/new$if;->break(Lorg/bouncycastle/jcajce/new$if;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/jcajce/new;->break:I

    invoke-static {p1}, Lorg/bouncycastle/jcajce/new$if;->catch(Lorg/bouncycastle/jcajce/new$if;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/new;->catch:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/jcajce/new$if;Lorg/bouncycastle/jcajce/new$do;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/new;-><init>(Lorg/bouncycastle/jcajce/new$if;)V

    return-void
.end method

.method public static synthetic case(Lorg/bouncycastle/jcajce/new;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/new;->case:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic do(Lorg/bouncycastle/jcajce/new;)Ljava/security/cert/PKIXParameters;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/new;->do:Ljava/security/cert/PKIXParameters;

    return-object p0
.end method

.method public static synthetic else(Lorg/bouncycastle/jcajce/new;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/new;->else:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic for(Lorg/bouncycastle/jcajce/new;)Lorg/bouncycastle/jcajce/if;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/new;->if:Lorg/bouncycastle/jcajce/if;

    return-object p0
.end method

.method public static synthetic goto(Lorg/bouncycastle/jcajce/new;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/new;->this:Z

    return p0
.end method

.method public static synthetic if(Lorg/bouncycastle/jcajce/new;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/new;->for:Ljava/util/Date;

    return-object p0
.end method

.method public static synthetic new(Lorg/bouncycastle/jcajce/new;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/new;->new:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic this(Lorg/bouncycastle/jcajce/new;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jcajce/new;->break:I

    return p0
.end method

.method public static synthetic try(Lorg/bouncycastle/jcajce/new;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/new;->try:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public break()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/new;->case:Ljava/util/List;

    return-object v0
.end method

.method public catch()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/new;->do:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public class()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/new;->do:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public const()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/new;->new:Ljava/util/List;

    return-object v0
.end method

.method public default()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/new;->do:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v0

    return v0
.end method

.method public extends()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/new;->goto:Z

    return v0
.end method

.method public final()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/new;->for:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public finally()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/new;->this:Z

    return v0
.end method

.method public import()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/new;->do:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getPolicyQualifiersRejected()Z

    move-result v0

    return v0
.end method

.method public native()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/new;->do:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public public()Lorg/bouncycastle/jcajce/if;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/new;->if:Lorg/bouncycastle/jcajce/if;

    return-object v0
.end method

.method public return()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/new;->catch:Ljava/util/Set;

    return-object v0
.end method

.method public static()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jcajce/new;->break:I

    return v0
.end method

.method public super()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/new;->do:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public switch()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/new;->do:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v0

    return v0
.end method

.method public throw()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/support/v4/tg0;",
            "Lorg/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/new;->else:Ljava/util/Map;

    return-object v0
.end method

.method public throws()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/new;->do:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    return v0
.end method

.method public while()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/support/v4/tg0;",
            "Lorg/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/new;->try:Ljava/util/Map;

    return-object v0
.end method
