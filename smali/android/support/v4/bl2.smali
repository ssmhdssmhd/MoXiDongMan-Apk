.class public Landroid/support/v4/bl2;
.super Landroid/support/v4/al2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfreemarker/template/TemplateModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/al2;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Lfreemarker/template/TemplateModel;

    invoke-static {p1}, Lfreemarker/template/utility/if;->case(Lfreemarker/template/TemplateModel;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
