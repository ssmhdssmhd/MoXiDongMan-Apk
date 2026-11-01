.class Lfreemarker/core/do;
.super Lfreemarker/template/TemplateException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfreemarker/core/d0;Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;)V
    .locals 1

    .line 1
    invoke-static {p1, p2, p3}, Lfreemarker/core/do;->buildDescription(Lfreemarker/core/d0;Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;)Lfreemarker/core/z4;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;Lfreemarker/core/h0;Lfreemarker/core/z4;)V

    return-void
.end method

.method public static buildDescription(Lfreemarker/core/d0;Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;)Lfreemarker/core/z4;
    .locals 8

    .line 1
    new-instance v0, Lfreemarker/core/z4;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "The value doesn\'t support ?api. See requirements in the FreeMarker Manual. (FTL type: "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/support/v4/bl2;

    invoke-direct {v2, p2}, Landroid/support/v4/bl2;-><init>(Lfreemarker/template/TemplateModel;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, ", TemplateModel class: "

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Landroid/support/v4/il2;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/support/v4/il2;-><init>(Ljava/lang/Class;)V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string v7, ", ObjectWapper: "

    aput-object v7, v1, v2

    new-instance v2, Landroid/support/v4/jl2;

    .line 3
    invoke-virtual {p0}, Lfreemarker/core/t;->implements()Lfreemarker/template/ObjectWrapper;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/support/v4/jl2;-><init>(Ljava/lang/Object;)V

    const/4 v7, 0x5

    aput-object v2, v1, v7

    const/4 v2, 0x6

    const-string v7, ")"

    aput-object v7, v1, v2

    invoke-direct {v0, v1}, Lfreemarker/core/z4;-><init>([Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0, p1}, Lfreemarker/core/z4;->if(Lfreemarker/core/h0;)Lfreemarker/core/z4;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lfreemarker/core/h0;->instanceof()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "Only adapted Java objects can possibly have API, not values created inside templates."

    .line 6
    invoke-virtual {v0, p0}, Lfreemarker/core/z4;->this(Ljava/lang/String;)Lfreemarker/core/z4;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/t;->implements()Lfreemarker/template/ObjectWrapper;

    move-result-object p0

    .line 8
    instance-of p1, p0, Lfreemarker/template/this;

    if-eqz p1, :cond_3

    instance-of p1, p2, Lfreemarker/template/native;

    if-nez p1, :cond_1

    instance-of p1, p2, Lfreemarker/template/return;

    if-eqz p1, :cond_3

    .line 9
    :cond_1
    check-cast p0, Lfreemarker/template/this;

    .line 10
    invoke-virtual {p0}, Lfreemarker/template/this;->C()Z

    move-result p1

    const-string v1, "object_wrapper"

    const-string v2, "In the FreeMarker configuration, \""

    if-nez p1, :cond_2

    new-array p1, v6, [Ljava/lang/Object;

    aput-object v2, p1, v3

    aput-object v1, p1, v4

    const-string p2, "\" is a DefaultObjectWrapper with its \"useAdaptersForContainers\" property set to false. Setting it to true might solves this problem."

    aput-object p2, p1, v5

    .line 11
    invoke-virtual {v0, p1}, Lfreemarker/core/z4;->break([Ljava/lang/Object;)Lfreemarker/core/z4;

    .line 12
    invoke-virtual {p0}, Lfreemarker/ext/beans/try;->import()Landroid/support/v4/we2;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/we2;->intValue()I

    move-result p0

    sget p1, Landroid/support/v4/ul2;->try:I

    if-ge p0, p1, :cond_3

    const-string p0, "Setting DefaultObjectWrapper\'s \"incompatibleImprovements\" to 2.3.22 or higher will change the default value of \"useAdaptersForContainers\" to true."

    .line 13
    invoke-virtual {v0, p0}, Lfreemarker/core/z4;->this(Ljava/lang/String;)Lfreemarker/core/z4;

    goto :goto_0

    .line 14
    :cond_2
    instance-of p1, p2, Lfreemarker/template/return;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lfreemarker/template/this;->A()Z

    move-result p0

    if-eqz p0, :cond_3

    new-array p0, v6, [Ljava/lang/Object;

    aput-object v2, p0, v3

    aput-object v1, p0, v4

    const-string p1, "\" is a DefaultObjectWrapper with its \"forceLegacyNonListCollections\" property set to true. If you are trying to access the API of a non-List Collection, setting the \"forceLegacyNonListCollections\" property to false might solves this problem."

    aput-object p1, p0, v5

    .line 15
    invoke-virtual {v0, p0}, Lfreemarker/core/z4;->break([Ljava/lang/Object;)Lfreemarker/core/z4;

    :cond_3
    :goto_0
    return-object v0
.end method
