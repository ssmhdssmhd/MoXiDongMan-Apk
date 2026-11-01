.class final Lfreemarker/ext/beans/try$try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/ext/util/ModelFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;)Lfreemarker/template/TemplateModel;
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/ext/beans/native;

    check-cast p1, Ljava/util/Enumeration;

    check-cast p2, Lfreemarker/ext/beans/try;

    invoke-direct {v0, p1, p2}, Lfreemarker/ext/beans/native;-><init>(Ljava/util/Enumeration;Lfreemarker/ext/beans/try;)V

    return-object v0
.end method
