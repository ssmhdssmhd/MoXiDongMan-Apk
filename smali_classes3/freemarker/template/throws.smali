.class public abstract Lfreemarker/template/throws;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static do:Lfreemarker/template/ObjectWrapper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private objectWrapper:Lfreemarker/template/ObjectWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/template/this;->continue:Lfreemarker/template/this;

    sput-object v0, Lfreemarker/template/throws;->do:Lfreemarker/template/ObjectWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/template/throws;->do:Lfreemarker/template/ObjectWrapper;

    invoke-direct {p0, v0}, Lfreemarker/template/throws;-><init>(Lfreemarker/template/ObjectWrapper;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/ObjectWrapper;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lfreemarker/template/throws;->do:Lfreemarker/template/ObjectWrapper;

    :goto_0
    iput-object p1, p0, Lfreemarker/template/throws;->objectWrapper:Lfreemarker/template/ObjectWrapper;

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Lfreemarker/template/this;

    invoke-direct {p1}, Lfreemarker/template/this;-><init>()V

    sput-object p1, Lfreemarker/template/throws;->do:Lfreemarker/template/ObjectWrapper;

    iput-object p1, p0, Lfreemarker/template/throws;->objectWrapper:Lfreemarker/template/ObjectWrapper;

    :cond_1
    return-void
.end method

.method public static getDefaultObjectWrapper()Lfreemarker/template/ObjectWrapper;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/template/throws;->do:Lfreemarker/template/ObjectWrapper;

    return-object v0
.end method

.method public static setDefaultObjectWrapper(Lfreemarker/template/ObjectWrapper;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sput-object p0, Lfreemarker/template/throws;->do:Lfreemarker/template/ObjectWrapper;

    return-void
.end method


# virtual methods
.method public getObjectWrapper()Lfreemarker/template/ObjectWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/throws;->objectWrapper:Lfreemarker/template/ObjectWrapper;

    return-object v0
.end method

.method public setObjectWrapper(Lfreemarker/template/ObjectWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/template/throws;->objectWrapper:Lfreemarker/template/ObjectWrapper;

    return-void
.end method

.method public final wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/throws;->objectWrapper:Lfreemarker/template/ObjectWrapper;

    invoke-interface {v0, p1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method
