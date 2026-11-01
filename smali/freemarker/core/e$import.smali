.class Lfreemarker/core/e$import;
.super Lfreemarker/core/e$while;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "import"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/e$import$do;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/e$while;-><init>()V

    return-void
.end method


# virtual methods
.method public r(Lfreemarker/template/TemplateSequenceModel;)Lfreemarker/template/TemplateModel;
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/core/e$import$do;

    invoke-direct {v0, p0, p1}, Lfreemarker/core/e$import$do;-><init>(Lfreemarker/core/e$import;Lfreemarker/template/TemplateSequenceModel;)V

    return-object v0
.end method
