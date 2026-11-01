.class public Lfreemarker/template/public;
.super Lfreemarker/template/this;
.source "SourceFile"


# static fields
.field public static final interface:Lfreemarker/template/public;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/template/public;

    invoke-direct {v0}, Lfreemarker/template/public;-><init>()V

    sput-object v0, Lfreemarker/template/public;->interface:Lfreemarker/template/public;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lfreemarker/template/this;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/we2;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lfreemarker/template/this;-><init>(Landroid/support/v4/we2;)V

    return-void
.end method


# virtual methods
.method public D(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/k52;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimpleObjectWrapper deliberately won\'t wrap this type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wrapAsAPI(Ljava/lang/Object;)Lfreemarker/template/TemplateHashModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    new-instance p1, Landroid/support/v4/k52;

    const-string v0, "SimpleObjectWrapper deliberately doesn\'t allow ?api."

    invoke-direct {p1, v0}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw p1
.end method
