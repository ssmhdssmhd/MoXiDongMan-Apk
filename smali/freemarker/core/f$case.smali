.class Lfreemarker/core/f$case;
.super Lfreemarker/core/return;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "case"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/f$case$do;
    }
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/core/f$case$do;

    iget-object v1, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    const-string v2, "For sequences/collections (lists and such) use \"?seq_contains\" instead."

    invoke-virtual {v1, p1, v2}, Lfreemarker/core/h0;->abstract(Lfreemarker/core/d0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lfreemarker/core/f$case$do;-><init>(Lfreemarker/core/f$case;Ljava/lang/String;Lfreemarker/core/f$do;)V

    return-object v0
.end method
