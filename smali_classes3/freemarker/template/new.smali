.class public Lfreemarker/template/new;
.super Lfreemarker/template/throws;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateCollectionModel;
.implements Lfreemarker/template/AdapterTemplateModel;
.implements Lfreemarker/ext/util/WrapperTemplateModel;
.implements Lfreemarker/template/TemplateModelWithAPISupport;
.implements Ljava/io/Serializable;


# instance fields
.field private final iterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Iterable;Lfreemarker/template/utility/ObjectWrapperWithAPISupport;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Lfreemarker/template/utility/ObjectWrapperWithAPISupport;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lfreemarker/template/throws;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 2
    iput-object p1, p0, Lfreemarker/template/new;->iterable:Ljava/lang/Iterable;

    return-void
.end method

.method public static adapt(Ljava/lang/Iterable;Lfreemarker/template/utility/ObjectWrapperWithAPISupport;)Lfreemarker/template/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Lfreemarker/template/utility/ObjectWrapperWithAPISupport;",
            ")",
            "Lfreemarker/template/new;"
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/template/new;

    invoke-direct {v0, p0, p1}, Lfreemarker/template/new;-><init>(Ljava/lang/Iterable;Lfreemarker/template/utility/ObjectWrapperWithAPISupport;)V

    return-object v0
.end method


# virtual methods
.method public getAPI()Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/throws;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    check-cast v0, Lfreemarker/template/utility/ObjectWrapperWithAPISupport;

    iget-object v1, p0, Lfreemarker/template/new;->iterable:Ljava/lang/Iterable;

    invoke-interface {v0, v1}, Lfreemarker/template/utility/ObjectWrapperWithAPISupport;->wrapAsAPI(Ljava/lang/Object;)Lfreemarker/template/TemplateHashModel;

    move-result-object v0

    return-object v0
.end method

.method public getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/new;->getWrappedObject()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/new;->iterable:Ljava/lang/Iterable;

    return-object v0
.end method

.method public iterator()Lfreemarker/template/TemplateModelIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/template/const;

    iget-object v1, p0, Lfreemarker/template/new;->iterable:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0}, Lfreemarker/template/throws;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfreemarker/template/const;-><init>(Ljava/util/Iterator;Lfreemarker/template/ObjectWrapper;)V

    return-object v0
.end method
