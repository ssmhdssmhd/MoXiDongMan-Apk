.class Lfreemarker/core/e$final$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/e$final;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field private do:Lfreemarker/template/TemplateCollectionModel;

.field public final synthetic for:Lfreemarker/core/e$final;

.field private if:Lfreemarker/core/d0;


# direct methods
.method private constructor <init>(Lfreemarker/core/e$final;Lfreemarker/template/TemplateCollectionModel;Lfreemarker/core/d0;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lfreemarker/core/e$final$do;->for:Lfreemarker/core/e$final;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lfreemarker/core/e$final$do;->do:Lfreemarker/template/TemplateCollectionModel;

    .line 4
    iput-object p3, p0, Lfreemarker/core/e$final$do;->if:Lfreemarker/core/d0;

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/e$final;Lfreemarker/template/TemplateCollectionModel;Lfreemarker/core/d0;Lfreemarker/core/e$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lfreemarker/core/e$final$do;-><init>(Lfreemarker/core/e$final;Lfreemarker/template/TemplateCollectionModel;Lfreemarker/core/d0;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/e$final$do;->for:Lfreemarker/core/e$final;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/return;->f(Ljava/util/List;I)V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateModel;

    .line 3
    iget-object v1, p0, Lfreemarker/core/e$final$do;->do:Lfreemarker/template/TemplateCollectionModel;

    invoke-interface {v1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v1

    .line 4
    :goto_0
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/core/e$final$do;->if:Lfreemarker/core/d0;

    invoke-static {v0, v2, p1, v3}, Lfreemarker/core/e;->do(ILfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    return-object p1
.end method
