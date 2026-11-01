.class Lfreemarker/core/d$for;
.super Lfreemarker/core/d$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/d$do;-><init>()V

    return-void
.end method


# virtual methods
.method public t(Ljava/lang/String;Lfreemarker/core/y1;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p1}, Lfreemarker/core/y1;->else(Ljava/lang/String;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p1

    return-object p1
.end method
