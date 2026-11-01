.class abstract Lfreemarker/core/instanceof$if;
.super Lfreemarker/core/extends;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/instanceof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "if"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/extends;-><init>()V

    return-void
.end method


# virtual methods
.method public final s(Lfreemarker/core/d1$do;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/instanceof$if;->t(Lfreemarker/core/d1$do;Lfreemarker/core/d0;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    goto :goto_0

    :cond_0
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    :goto_0
    return-object p1
.end method

.method public abstract t(Lfreemarker/core/d1$do;Lfreemarker/core/d0;)Z
.end method
