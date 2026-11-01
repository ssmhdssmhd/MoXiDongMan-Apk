.class Lfreemarker/core/e$const;
.super Lfreemarker/core/continue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "const"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/e$const$do;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/continue;-><init>()V

    return-void
.end method


# virtual methods
.method public r(Lfreemarker/template/TemplateSequenceModel;)Lfreemarker/template/TemplateModel;
    .locals 1

    .line 1
    instance-of v0, p1, Lfreemarker/core/e$const$do;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lfreemarker/core/e$const$do;

    invoke-static {p1}, Lfreemarker/core/e$const$do;->do(Lfreemarker/core/e$const$do;)Lfreemarker/template/TemplateSequenceModel;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lfreemarker/core/e$const$do;

    invoke-direct {v0, p1}, Lfreemarker/core/e$const$do;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    return-object v0
.end method
