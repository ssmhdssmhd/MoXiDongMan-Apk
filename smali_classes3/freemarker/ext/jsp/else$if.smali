.class Lfreemarker/ext/jsp/else$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jsp/else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private final do:Lfreemarker/template/TemplateModelIterator;


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
    invoke-interface {p1}, Lfreemarker/template/TemplateHashModelEx;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object p1

    invoke-interface {p1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/jsp/else$if;->do:Lfreemarker/template/TemplateModelIterator;

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/template/TemplateHashModelEx;Lfreemarker/ext/jsp/else$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/ext/jsp/else$if;-><init>(Lfreemarker/template/TemplateHashModelEx;)V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jsp/else$if;->do:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catch Landroid/support/v4/k52; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Landroid/support/v4/kb2;

    invoke-direct {v1, v0}, Landroid/support/v4/kb2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jsp/else$if;->do:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/support/v4/k52; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Landroid/support/v4/kb2;

    invoke-direct {v1, v0}, Landroid/support/v4/kb2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
