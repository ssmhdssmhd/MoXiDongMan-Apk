.class public Lfreemarker/template/for;
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
        Lfreemarker/template/for$if;
    }
.end annotation


# instance fields
.field private final enumeration:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "*>;"
        }
    .end annotation
.end field

.field private enumerationOwnedBySomeone:Z


# direct methods
.method private constructor <init>(Ljava/util/Enumeration;Lfreemarker/template/ObjectWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration<",
            "*>;",
            "Lfreemarker/template/ObjectWrapper;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lfreemarker/template/throws;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 2
    iput-object p1, p0, Lfreemarker/template/for;->enumeration:Ljava/util/Enumeration;

    return-void
.end method

.method public static synthetic access$100(Lfreemarker/template/for;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfreemarker/template/for;->enumerationOwnedBySomeone:Z

    return p0
.end method

.method public static synthetic access$102(Lfreemarker/template/for;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfreemarker/template/for;->enumerationOwnedBySomeone:Z

    return p1
.end method

.method public static synthetic access$200(Lfreemarker/template/for;)Ljava/util/Enumeration;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/template/for;->enumeration:Ljava/util/Enumeration;

    return-object p0
.end method

.method public static adapt(Ljava/util/Enumeration;Lfreemarker/template/ObjectWrapper;)Lfreemarker/template/for;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration<",
            "*>;",
            "Lfreemarker/template/ObjectWrapper;",
            ")",
            "Lfreemarker/template/for;"
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/template/for;

    invoke-direct {v0, p0, p1}, Lfreemarker/template/for;-><init>(Ljava/util/Enumeration;Lfreemarker/template/ObjectWrapper;)V

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

    iget-object v1, p0, Lfreemarker/template/for;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v0, v1}, Lfreemarker/template/utility/ObjectWrapperWithAPISupport;->wrapAsAPI(Ljava/lang/Object;)Lfreemarker/template/TemplateHashModel;

    move-result-object v0

    return-object v0
.end method

.method public getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/for;->getWrappedObject()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/for;->enumeration:Ljava/util/Enumeration;

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
    new-instance v0, Lfreemarker/template/for$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfreemarker/template/for$if;-><init>(Lfreemarker/template/for;Lfreemarker/template/for$do;)V

    return-object v0
.end method
