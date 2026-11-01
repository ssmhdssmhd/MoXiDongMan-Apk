.class public Lfreemarker/template/throw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;


# instance fields
.field private final do:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final if:Lfreemarker/template/ObjectWrapper;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lfreemarker/template/ObjectWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "**>;",
            "Lfreemarker/template/ObjectWrapper;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/template/throw;->do:Ljava/util/Iterator;

    .line 3
    iput-object p2, p0, Lfreemarker/template/throw;->if:Lfreemarker/template/ObjectWrapper;

    return-void
.end method

.method public static synthetic do(Lfreemarker/template/throw;Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/template/throw;->if(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p0

    return-object p0
.end method

.method private if(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lfreemarker/template/TemplateModel;

    if-eqz v0, :cond_0

    check-cast p1, Lfreemarker/template/TemplateModel;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfreemarker/template/throw;->if:Lfreemarker/template/ObjectWrapper;

    invoke-interface {v0, p1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/throw;->do:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/template/throw;->do:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    new-instance v1, Lfreemarker/template/throw$do;

    invoke-direct {v1, p0, v0}, Lfreemarker/template/throw$do;-><init>(Lfreemarker/template/throw;Ljava/util/Map$Entry;)V

    return-object v1
.end method
