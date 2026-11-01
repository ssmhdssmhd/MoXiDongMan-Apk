.class Lfreemarker/core/a$break;
.super Lfreemarker/core/return;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "break"
.end annotation


# instance fields
.field private final final:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/return;-><init>()V

    .line 2
    iput p1, p0, Lfreemarker/core/a$break;->final:I

    return-void
.end method


# virtual methods
.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v1, v0, p1}, Lfreemarker/core/h0;->public(Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    .line 3
    instance-of p1, v0, Lfreemarker/template/TemplateDateModel;

    if-eqz p1, :cond_0

    check-cast v0, Lfreemarker/template/TemplateDateModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateDateModel;->getDateType()I

    move-result p1

    iget v0, p0, Lfreemarker/core/a$break;->final:I

    if-ne p1, v0, :cond_0

    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    goto :goto_0

    :cond_0
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    :goto_0
    return-object p1
.end method
