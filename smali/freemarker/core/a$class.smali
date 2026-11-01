.class Lfreemarker/core/a$class;
.super Lfreemarker/core/return;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "class"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/return;-><init>()V

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
    instance-of p1, v0, Lfreemarker/template/TemplateSequenceModel;

    if-nez p1, :cond_0

    instance-of p1, v0, Lfreemarker/template/TemplateCollectionModel;

    if-eqz p1, :cond_1

    .line 4
    :cond_0
    invoke-static {p0}, Landroid/support/v4/ul2;->super(Lfreemarker/core/h4;)I

    move-result p1

    sget v1, Landroid/support/v4/ul2;->new:I

    if-lt p1, v1, :cond_2

    instance-of p1, v0, Lfreemarker/ext/beans/c;

    if-nez p1, :cond_1

    instance-of p1, v0, Lfreemarker/ext/beans/strictfp;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    :goto_1
    return-object p1
.end method
