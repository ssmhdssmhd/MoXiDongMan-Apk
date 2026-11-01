.class public Lfreemarker/template/utility/goto;
.super Lorg/python/util/PythonInterpreter;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateTransformModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/python/util/PythonInterpreter;-><init>()V

    return-void
.end method

.method public static synthetic do(Lfreemarker/template/utility/goto;)Lorg/python/core/PySystemState;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/template/utility/goto;->systemState:Lorg/python/core/PySystemState;

    return-object p0
.end method


# virtual methods
.method public getWriter(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;
    .locals 2

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {}, Lfreemarker/core/d0;->w1()Lfreemarker/core/d0;

    move-result-object v0

    .line 3
    new-instance v1, Lfreemarker/template/utility/goto$do;

    invoke-direct {v1, p0, p2, p1, v0}, Lfreemarker/template/utility/goto$do;-><init>(Lfreemarker/template/utility/goto;Ljava/lang/StringBuilder;Ljava/io/Writer;Lfreemarker/core/d0;)V

    return-object v1
.end method
