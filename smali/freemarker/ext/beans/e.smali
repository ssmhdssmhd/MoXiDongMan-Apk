.class Lfreemarker/ext/beans/e;
.super Lfreemarker/ext/beans/catch;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfreemarker/ext/beans/try;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/catch;-><init>(Lfreemarker/ext/beans/try;)V

    return-void
.end method


# virtual methods
.method public if(Ljava/lang/Class;)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/ext/beans/d;

    invoke-virtual {p0}, Lfreemarker/ext/beans/catch;->new()Lfreemarker/ext/beans/try;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lfreemarker/ext/beans/d;-><init>(Ljava/lang/Class;Lfreemarker/ext/beans/try;)V

    return-object v0
.end method
