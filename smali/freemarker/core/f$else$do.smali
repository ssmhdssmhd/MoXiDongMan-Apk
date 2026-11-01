.class Lfreemarker/core/f$else$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/f$else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field private do:Ljava/lang/String;

.field public final synthetic if:Lfreemarker/core/f$else;


# direct methods
.method private constructor <init>(Lfreemarker/core/f$else;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lfreemarker/core/f$else$do;->if:Lfreemarker/core/f$else;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lfreemarker/core/f$else$do;->do:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/f$else;Ljava/lang/String;Lfreemarker/core/f$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/core/f$else$do;-><init>(Lfreemarker/core/f$else;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/f$else$do;->if:Lfreemarker/core/f$else;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/return;->f(Ljava/util/List;I)V

    .line 2
    iget-object v0, p0, Lfreemarker/core/f$else$do;->do:Ljava/lang/String;

    iget-object v1, p0, Lfreemarker/core/f$else$do;->if:Lfreemarker/core/f$else;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lfreemarker/core/return;->k(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    goto :goto_0

    :cond_0
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    :goto_0
    return-object p1
.end method
