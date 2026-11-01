.class Lfreemarker/template/utility/throw$try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/utility/throw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "try"
.end annotation


# instance fields
.field private final do:Lfreemarker/template/TemplateHashModelEx;

.field private final if:Lfreemarker/template/TemplateModelIterator;


# direct methods
.method private constructor <init>(Lfreemarker/template/TemplateHashModelEx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lfreemarker/template/utility/throw$try;->do:Lfreemarker/template/TemplateHashModelEx;

    .line 4
    invoke-interface {p1}, Lfreemarker/template/TemplateHashModelEx;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object p1

    invoke-interface {p1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/template/utility/throw$try;->if:Lfreemarker/template/TemplateModelIterator;

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/template/TemplateHashModelEx;Lfreemarker/template/utility/throw$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/template/utility/throw$try;-><init>(Lfreemarker/template/TemplateHashModelEx;)V

    return-void
.end method

.method public static synthetic do(Lfreemarker/template/utility/throw$try;)Lfreemarker/template/TemplateHashModelEx;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/template/utility/throw$try;->do:Lfreemarker/template/TemplateHashModelEx;

    return-object p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/utility/throw$try;->if:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/utility/throw$try;->if:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lfreemarker/template/TemplateScalarModel;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lfreemarker/template/utility/throw$try$do;

    invoke-direct {v1, p0, v0}, Lfreemarker/template/utility/throw$try$do;-><init>(Lfreemarker/template/utility/throw$try;Lfreemarker/template/TemplateModel;)V

    return-object v1

    .line 4
    :cond_0
    iget-object v1, p0, Lfreemarker/template/utility/throw$try;->do:Lfreemarker/template/TemplateHashModelEx;

    invoke-static {v0, v1}, Lfreemarker/core/b5;->public(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateHashModelEx;)Landroid/support/v4/k52;

    move-result-object v0

    throw v0
.end method
