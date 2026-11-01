.class Lfreemarker/ext/beans/try$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/ext/util/ModelFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lfreemarker/ext/beans/try;


# direct methods
.method public constructor <init>(Lfreemarker/ext/beans/try;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/beans/try$for;->do:Lfreemarker/ext/beans/try;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;)Lfreemarker/template/TemplateModel;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lfreemarker/ext/beans/try$for;->do:Lfreemarker/ext/beans/try;

    invoke-static {p1}, Lfreemarker/ext/beans/try;->do(Lfreemarker/ext/beans/try;)Landroid/support/v4/ac;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lfreemarker/ext/beans/try$for;->do:Lfreemarker/ext/beans/try;

    invoke-static {p1}, Lfreemarker/ext/beans/try;->if(Lfreemarker/ext/beans/try;)Landroid/support/v4/ac;

    move-result-object p1

    :goto_0
    return-object p1
.end method
