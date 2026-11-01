.class Lfreemarker/core/transient$case;
.super Lfreemarker/core/transient$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/transient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "case"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/transient$if;-><init>(Lfreemarker/core/transient$do;)V

    return-void
.end method


# virtual methods
.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/transient$if;->r(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lfreemarker/template/TemplateModel;->NOTHING:Lfreemarker/template/TemplateModel;

    :cond_0
    return-object p1
.end method
