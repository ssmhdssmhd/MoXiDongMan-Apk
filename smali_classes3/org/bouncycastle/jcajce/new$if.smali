.class public Lorg/bouncycastle/jcajce/new$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private break:Z

.field private case:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation
.end field

.field private catch:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private final do:Ljava/security/cert/PKIXParameters;

.field private else:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/support/v4/tg0;",
            "Lorg/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation
.end field

.field private for:Lorg/bouncycastle/jcajce/if;

.field private goto:Z

.field private final if:Ljava/util/Date;

.field private new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation
.end field

.field private this:I

.field private try:Ljava/util/Map;
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
.method public constructor <init>(Ljava/security/cert/PKIXParameters;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/new$if;->new:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/new$if;->try:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/new$if;->case:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/new$if;->else:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jcajce/new$if;->this:I

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/new$if;->break:Z

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXParameters;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/new$if;->do:Ljava/security/cert/PKIXParameters;

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/bouncycastle/jcajce/if$if;

    invoke-direct {v1, v0}, Lorg/bouncycastle/jcajce/if$if;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/if$if;->do()Lorg/bouncycastle/jcajce/if;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/new$if;->for:Lorg/bouncycastle/jcajce/if;

    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :cond_1
    iput-object v0, p0, Lorg/bouncycastle/jcajce/new$if;->if:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/new$if;->goto:Z

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/new$if;->catch:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/new;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/new$if;->new:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/new$if;->try:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/new$if;->case:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/new$if;->else:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jcajce/new$if;->this:I

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/new$if;->break:Z

    invoke-static {p1}, Lorg/bouncycastle/jcajce/new;->do(Lorg/bouncycastle/jcajce/new;)Ljava/security/cert/PKIXParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/new$if;->do:Ljava/security/cert/PKIXParameters;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/new;->if(Lorg/bouncycastle/jcajce/new;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/new$if;->if:Ljava/util/Date;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/new;->for(Lorg/bouncycastle/jcajce/new;)Lorg/bouncycastle/jcajce/if;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/new$if;->for:Lorg/bouncycastle/jcajce/if;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/new;->new(Lorg/bouncycastle/jcajce/new;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/new$if;->new:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/new;->try(Lorg/bouncycastle/jcajce/new;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/new$if;->try:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/new;->case(Lorg/bouncycastle/jcajce/new;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/new$if;->case:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/new;->else(Lorg/bouncycastle/jcajce/new;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/new$if;->else:Ljava/util/Map;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/new;->goto(Lorg/bouncycastle/jcajce/new;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/new$if;->break:Z

    invoke-static {p1}, Lorg/bouncycastle/jcajce/new;->this(Lorg/bouncycastle/jcajce/new;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/jcajce/new$if;->this:I

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/new;->extends()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/new$if;->goto:Z

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/new;->return()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/new$if;->catch:Ljava/util/Set;

    return-void
.end method

.method public static synthetic break(Lorg/bouncycastle/jcajce/new$if;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jcajce/new$if;->this:I

    return p0
.end method

.method public static synthetic case(Lorg/bouncycastle/jcajce/new$if;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/new$if;->else:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic catch(Lorg/bouncycastle/jcajce/new$if;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/new$if;->catch:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic do(Lorg/bouncycastle/jcajce/new$if;)Ljava/security/cert/PKIXParameters;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/new$if;->do:Ljava/security/cert/PKIXParameters;

    return-object p0
.end method

.method public static synthetic else(Lorg/bouncycastle/jcajce/new$if;)Lorg/bouncycastle/jcajce/if;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/new$if;->for:Lorg/bouncycastle/jcajce/if;

    return-object p0
.end method

.method public static synthetic for(Lorg/bouncycastle/jcajce/new$if;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/new$if;->new:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic goto(Lorg/bouncycastle/jcajce/new$if;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/new$if;->goto:Z

    return p0
.end method

.method public static synthetic if(Lorg/bouncycastle/jcajce/new$if;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/new$if;->if:Ljava/util/Date;

    return-object p0
.end method

.method public static synthetic new(Lorg/bouncycastle/jcajce/new$if;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/new$if;->try:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic this(Lorg/bouncycastle/jcajce/new$if;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/new$if;->break:Z

    return p0
.end method

.method public static synthetic try(Lorg/bouncycastle/jcajce/new$if;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/new$if;->case:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public class(Lorg/bouncycastle/jcajce/PKIXCRLStore;)Lorg/bouncycastle/jcajce/new$if;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/new$if;->case:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public const(Lorg/bouncycastle/jcajce/PKIXCertStore;)Lorg/bouncycastle/jcajce/new$if;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/new$if;->new:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final(Landroid/support/v4/tg0;Lorg/bouncycastle/jcajce/PKIXCRLStore;)Lorg/bouncycastle/jcajce/new$if;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/new$if;->else:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public import(Lorg/bouncycastle/jcajce/if;)Lorg/bouncycastle/jcajce/new$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/new$if;->for:Lorg/bouncycastle/jcajce/if;

    return-object p0
.end method

.method public native(Ljava/security/cert/TrustAnchor;)Lorg/bouncycastle/jcajce/new$if;
    .locals 0

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/new$if;->catch:Ljava/util/Set;

    return-object p0
.end method

.method public public(Ljava/util/Set;)Lorg/bouncycastle/jcajce/new$if;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Lorg/bouncycastle/jcajce/new$if;"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/jcajce/new$if;->catch:Ljava/util/Set;

    return-object p0
.end method

.method public return(Z)Lorg/bouncycastle/jcajce/new$if;
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/new$if;->break:Z

    return-object p0
.end method

.method public static(I)Lorg/bouncycastle/jcajce/new$if;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/jcajce/new$if;->this:I

    return-object p0
.end method

.method public super(Landroid/support/v4/tg0;Lorg/bouncycastle/jcajce/PKIXCertStore;)Lorg/bouncycastle/jcajce/new$if;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/new$if;->try:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public throw()Lorg/bouncycastle/jcajce/new;
    .locals 2

    new-instance v0, Lorg/bouncycastle/jcajce/new;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/jcajce/new;-><init>(Lorg/bouncycastle/jcajce/new$if;Lorg/bouncycastle/jcajce/new$do;)V

    return-object v0
.end method

.method public while(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/new$if;->goto:Z

    return-void
.end method
