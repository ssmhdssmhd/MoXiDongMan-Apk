.class Lfreemarker/core/f$throws;
.super Lfreemarker/core/f$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "throws"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/f$if;-><init>()V

    return-void
.end method


# virtual methods
.method public t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public u(Lfreemarker/core/p4;Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    move-object v3, p4

    check-cast v3, Lfreemarker/template/TemplateScalarModel;

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lfreemarker/core/p4;->do(Ljava/lang/String;ILfreemarker/template/TemplateScalarModel;Ljava/lang/Integer;Lfreemarker/core/d0;)Lfreemarker/template/TemplateScalarModel;

    move-result-object p1

    return-object p1
.end method
