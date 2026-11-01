.class public Landroid/support/v4/fm1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final do:Ljava/lang/String; = "kotlin.jvm.functions."


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public break(Landroid/support/v4/gg1;)Lkotlin/reflect/KProperty0;
    .locals 0

    return-object p1
.end method

.method public case(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/lb1;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/lb1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public catch(Landroid/support/v4/ig1;)Lkotlin/reflect/KProperty1;
    .locals 0

    return-object p1
.end method

.method public class(Landroid/support/v4/kg1;)Lkotlin/reflect/KProperty2;
    .locals 0

    return-object p1
.end method

.method public const(Landroid/support/v4/yr0;)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.1"
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/fm1;->final(Lkotlin/jvm/internal/FunctionBase;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public do(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 1

    .line 1
    new-instance v0, Lkotlin/jvm/internal/const;

    invoke-direct {v0, p1}, Lkotlin/jvm/internal/const;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public else(Landroid/support/v4/f11;)Lkotlin/reflect/KMutableProperty0;
    .locals 0

    return-object p1
.end method

.method public final(Lkotlin/jvm/internal/FunctionBase;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/v4/iz1;
        version = "1.3"
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kotlin.jvm.functions."

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public for(Landroid/support/v4/je0;)Lkotlin/reflect/KFunction;
    .locals 0

    return-object p1
.end method

.method public goto(Landroid/support/v4/h11;)Lkotlin/reflect/KMutableProperty1;
    .locals 0

    return-object p1
.end method

.method public if(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;
    .locals 0

    .line 1
    new-instance p2, Lkotlin/jvm/internal/const;

    invoke-direct {p2, p1}, Lkotlin/jvm/internal/const;-><init>(Ljava/lang/Class;)V

    return-object p2
.end method

.method public new(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 1

    .line 1
    new-instance v0, Lkotlin/jvm/internal/const;

    invoke-direct {v0, p1}, Lkotlin/jvm/internal/const;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public super(Lkotlin/reflect/KTypeParameter;Ljava/util/List;)V
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.4"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KTypeParameter;",
            "Ljava/util/List<",
            "Lkotlin/reflect/KType;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lkotlin/jvm/internal/throw;

    invoke-virtual {p1, p2}, Lkotlin/jvm/internal/throw;->if(Ljava/util/List;)V

    return-void
.end method

.method public this(Landroid/support/v4/j11;)Lkotlin/reflect/KMutableProperty2;
    .locals 0

    return-object p1
.end method

.method public throw(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)Lkotlin/reflect/KType;
    .locals 1
    .annotation build Landroid/support/v4/iz1;
        version = "1.4"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClassifier;",
            "Ljava/util/List<",
            "Landroid/support/v4/qq0;",
            ">;Z)",
            "Lkotlin/reflect/KType;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/jvm/internal/while;

    invoke-direct {v0, p1, p2, p3}, Lkotlin/jvm/internal/while;-><init>(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)V

    return-object v0
.end method

.method public try(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;
    .locals 0

    .line 1
    new-instance p2, Lkotlin/jvm/internal/const;

    invoke-direct {p2, p1}, Lkotlin/jvm/internal/const;-><init>(Ljava/lang/Class;)V

    return-object p2
.end method

.method public while(Ljava/lang/Object;Ljava/lang/String;Lkotlin/reflect/for;Z)Lkotlin/reflect/KTypeParameter;
    .locals 1
    .annotation build Landroid/support/v4/iz1;
        version = "1.4"
    .end annotation

    .line 1
    new-instance v0, Lkotlin/jvm/internal/throw;

    invoke-direct {v0, p1, p2, p3, p4}, Lkotlin/jvm/internal/throw;-><init>(Ljava/lang/Object;Ljava/lang/String;Lkotlin/reflect/for;Z)V

    return-object v0
.end method
