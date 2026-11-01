.class public Lfreemarker/template/try;
.super Lfreemarker/template/throws;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateCollectionModel;
.implements Lfreemarker/template/AdapterTemplateModel;
.implements Lfreemarker/ext/util/WrapperTemplateModel;
.implements Lfreemarker/template/TemplateModelWithAPISupport;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/try$if;
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;

.field private iteratorOwnedBySomeone:Z


# direct methods
.method private constructor <init>(Ljava/util/Iterator;Lfreemarker/template/ObjectWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lfreemarker/template/throws;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 2
    iput-object p1, p0, Lfreemarker/template/try;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method public static synthetic access$100(Lfreemarker/template/try;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfreemarker/template/try;->iteratorOwnedBySomeone:Z

    return p0
.end method

.method public static synthetic access$102(Lfreemarker/template/try;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfreemarker/template/try;->iteratorOwnedBySomeone:Z

    return p1
.end method

.method public static synthetic access$200(Lfreemarker/template/try;)Ljava/util/Iterator;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/template/try;->iterator:Ljava/util/Iterator;

    return-object p0
.end method

.method public static adapt(Ljava/util/Iterator;Lfreemarker/template/ObjectWrapper;)Lfreemarker/template/try;
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/template/try;

    invoke-direct {v0, p0, p1}, Lfreemarker/template/try;-><init>(Ljava/util/Iterator;Lfreemarker/template/ObjectWrapper;)V

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

    iget-object v1, p0, Lfreemarker/template/try;->iterator:Ljava/util/Iterator;

    invoke-interface {v0, v1}, Lfreemarker/template/utility/ObjectWrapperWithAPISupport;->wrapAsAPI(Ljava/lang/Object;)Lfreemarker/template/TemplateHashModel;

    move-result-object v0

    return-object v0
.end method

.method public getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/try;->getWrappedObject()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/try;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public iterator()Lfreemarker/template/TemplateModelIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/template/try$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfreemarker/template/try$if;-><init>(Lfreemarker/template/try;Lfreemarker/template/try$do;)V

    return-object v0
.end method
