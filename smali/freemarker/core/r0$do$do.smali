.class Lfreemarker/core/r0$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/r0$do;->keyValuePairIterator()Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final do:Lfreemarker/template/TemplateModelIterator;

.field public final synthetic for:Lfreemarker/core/r0$do;

.field private final if:Lfreemarker/template/TemplateModelIterator;


# direct methods
.method public constructor <init>(Lfreemarker/core/r0$do;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lfreemarker/core/r0$do$do;->for:Lfreemarker/core/r0$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lfreemarker/core/r0$do;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v0

    invoke-interface {v0}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/r0$do$do;->do:Lfreemarker/template/TemplateModelIterator;

    .line 3
    invoke-virtual {p1}, Lfreemarker/core/r0$do;->values()Lfreemarker/template/TemplateCollectionModel;

    move-result-object p1

    invoke-interface {p1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/r0$do$do;->if:Lfreemarker/template/TemplateModelIterator;

    return-void
.end method

.method public static synthetic do(Lfreemarker/core/r0$do$do;)Lfreemarker/template/TemplateModelIterator;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/core/r0$do$do;->do:Lfreemarker/template/TemplateModelIterator;

    return-object p0
.end method

.method public static synthetic if(Lfreemarker/core/r0$do$do;)Lfreemarker/template/TemplateModelIterator;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/core/r0$do$do;->if:Lfreemarker/template/TemplateModelIterator;

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
    iget-object v0, p0, Lfreemarker/core/r0$do$do;->do:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/core/r0$do$do$do;

    invoke-direct {v0, p0}, Lfreemarker/core/r0$do$do$do;-><init>(Lfreemarker/core/r0$do$do;)V

    return-object v0
.end method
