.class public final Lkotlin/jvm/internal/const;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/KClass;
.implements Lkotlin/jvm/internal/ClassBasedDeclarationContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/jvm/internal/const$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/reflect/KClass<",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/jvm/internal/ClassBasedDeclarationContainer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClassReference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassReference.kt\nkotlin/jvm/internal/ClassReference\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,205:1\n1557#2:206\n1588#2,4:207\n1251#2,4:211\n1236#2,4:217\n436#3:215\n386#3:216\n*S KotlinDebug\n*F\n+ 1 ClassReference.kt\nkotlin/jvm/internal/ClassReference\n*L\n107#1:206\n107#1:207,4\n155#1:211,4\n163#1:217,4\n163#1:215\n163#1:216\n*E\n"
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u001b\u0018\u0000 R2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0010B\u0013\u0012\n\u0010\u0014\u001a\u0006\u0012\u0002\u0008\u00030\u000f\u00a2\u0006\u0004\u0008P\u0010QJ\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0017J\u0013\u0010\n\u001a\u00020\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0016R \u0010\u0014\u001a\u0006\u0012\u0002\u0008\u00030\u000f8\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\r8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\r8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0016R \u0010\u001e\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u001b0\u001a8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\"\u0010!\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u001f0\u001a8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u001dR \u0010#\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00010\u001a8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u001dR\u001c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020%0$8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'R\u0018\u0010+\u001a\u0004\u0018\u00010\u00028V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*R\"\u00100\u001a\u0008\u0012\u0004\u0012\u00020,0$8V@\u0017X\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008.\u0010/\u001a\u0004\u0008-\u0010\'R\"\u00104\u001a\u0008\u0012\u0004\u0012\u0002010$8V@\u0017X\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u00083\u0010/\u001a\u0004\u00082\u0010\'R*\u00107\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u00010$8V@\u0017X\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u00086\u0010/\u001a\u0004\u00085\u0010\'R\u001e\u0010<\u001a\u0004\u0018\u0001088V@\u0017X\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008;\u0010/\u001a\u0004\u00089\u0010:R\u001c\u0010=\u001a\u00020\u00078V@\u0017X\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008?\u0010/\u001a\u0004\u0008=\u0010>R\u001c\u0010@\u001a\u00020\u00078V@\u0017X\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008A\u0010/\u001a\u0004\u0008@\u0010>R\u001c\u0010B\u001a\u00020\u00078V@\u0017X\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008C\u0010/\u001a\u0004\u0008B\u0010>R\u001c\u0010D\u001a\u00020\u00078V@\u0017X\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008E\u0010/\u001a\u0004\u0008D\u0010>R\u001c\u0010F\u001a\u00020\u00078V@\u0017X\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008G\u0010/\u001a\u0004\u0008F\u0010>R\u001c\u0010H\u001a\u00020\u00078V@\u0017X\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008I\u0010/\u001a\u0004\u0008H\u0010>R\u001c\u0010J\u001a\u00020\u00078V@\u0017X\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008K\u0010/\u001a\u0004\u0008J\u0010>R\u001c\u0010L\u001a\u00020\u00078V@\u0017X\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008M\u0010/\u001a\u0004\u0008L\u0010>R\u001c\u0010N\u001a\u00020\u00078V@\u0017X\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008O\u0010/\u001a\u0004\u0008N\u0010>\u00a8\u0006S"
    }
    d2 = {
        "Lkotlin/jvm/internal/const;",
        "Lkotlin/reflect/KClass;",
        "",
        "Lkotlin/jvm/internal/ClassBasedDeclarationContainer;",
        "",
        "new",
        "value",
        "",
        "isInstance",
        "other",
        "equals",
        "",
        "hashCode",
        "",
        "toString",
        "Ljava/lang/Class;",
        "do",
        "Ljava/lang/Class;",
        "getJClass",
        "()Ljava/lang/Class;",
        "jClass",
        "getSimpleName",
        "()Ljava/lang/String;",
        "simpleName",
        "getQualifiedName",
        "qualifiedName",
        "",
        "Lkotlin/reflect/KCallable;",
        "getMembers",
        "()Ljava/util/Collection;",
        "members",
        "Lkotlin/reflect/KFunction;",
        "getConstructors",
        "constructors",
        "getNestedClasses",
        "nestedClasses",
        "",
        "",
        "getAnnotations",
        "()Ljava/util/List;",
        "annotations",
        "getObjectInstance",
        "()Ljava/lang/Object;",
        "objectInstance",
        "Lkotlin/reflect/KTypeParameter;",
        "getTypeParameters",
        "getTypeParameters$annotations",
        "()V",
        "typeParameters",
        "Lkotlin/reflect/KType;",
        "getSupertypes",
        "getSupertypes$annotations",
        "supertypes",
        "getSealedSubclasses",
        "getSealedSubclasses$annotations",
        "sealedSubclasses",
        "Lkotlin/reflect/new;",
        "getVisibility",
        "()Lkotlin/reflect/new;",
        "getVisibility$annotations",
        "visibility",
        "isFinal",
        "()Z",
        "isFinal$annotations",
        "isOpen",
        "isOpen$annotations",
        "isAbstract",
        "isAbstract$annotations",
        "isSealed",
        "isSealed$annotations",
        "isData",
        "isData$annotations",
        "isInner",
        "isInner$annotations",
        "isCompanion",
        "isCompanion$annotations",
        "isFun",
        "isFun$annotations",
        "isValue",
        "isValue$annotations",
        "<init>",
        "(Ljava/lang/Class;)V",
        "else",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final case:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final else:Lkotlin/jvm/internal/const$do;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field

.field private static final for:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final if:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lkotlin/Function<",
            "*>;>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final new:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final try:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final do:Ljava/lang/Class;
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lkotlin/jvm/internal/const$do;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/const$do;-><init>(Landroid/support/v4/rx;)V

    sput-object v0, Lkotlin/jvm/internal/const;->else:Lkotlin/jvm/internal/const$do;

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/Class;

    .line 1
    const-class v2, Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-class v2, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const-class v2, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const/4 v2, 0x3

    const-class v5, Lkotlin/jvm/functions/Function3;

    aput-object v5, v0, v2

    const/4 v2, 0x4

    const-class v5, Lkotlin/jvm/functions/Function4;

    aput-object v5, v0, v2

    const/4 v2, 0x5

    .line 2
    const-class v5, Lkotlin/jvm/functions/Function5;

    aput-object v5, v0, v2

    const/4 v2, 0x6

    const-class v5, Lkotlin/jvm/functions/Function6;

    aput-object v5, v0, v2

    const/4 v2, 0x7

    const-class v5, Lkotlin/jvm/functions/Function7;

    aput-object v5, v0, v2

    const/16 v2, 0x8

    const-class v5, Lkotlin/jvm/functions/Function8;

    aput-object v5, v0, v2

    const/16 v2, 0x9

    const-class v5, Lkotlin/jvm/functions/Function9;

    aput-object v5, v0, v2

    .line 3
    const-class v2, Lkotlin/jvm/functions/Function10;

    const/16 v5, 0xa

    aput-object v2, v0, v5

    const/16 v2, 0xb

    const-class v6, Lkotlin/jvm/functions/Function11;

    aput-object v6, v0, v2

    const/16 v2, 0xc

    const-class v6, Lkotlin/jvm/functions/Function12;

    aput-object v6, v0, v2

    const/16 v2, 0xd

    const-class v6, Lkotlin/jvm/functions/Function13;

    aput-object v6, v0, v2

    const/16 v2, 0xe

    const-class v6, Lkotlin/jvm/functions/Function14;

    aput-object v6, v0, v2

    const/16 v2, 0xf

    .line 4
    const-class v6, Lkotlin/jvm/functions/Function15;

    aput-object v6, v0, v2

    const/16 v2, 0x10

    const-class v6, Lkotlin/jvm/functions/Function16;

    aput-object v6, v0, v2

    const/16 v2, 0x11

    const-class v6, Lkotlin/jvm/functions/Function17;

    aput-object v6, v0, v2

    const/16 v2, 0x12

    const-class v6, Lkotlin/jvm/functions/Function18;

    aput-object v6, v0, v2

    const/16 v2, 0x13

    const-class v6, Lkotlin/jvm/functions/Function19;

    aput-object v6, v0, v2

    const/16 v2, 0x14

    .line 5
    const-class v6, Lkotlin/jvm/functions/Function20;

    aput-object v6, v0, v2

    const/16 v2, 0x15

    const-class v6, Lkotlin/jvm/functions/Function21;

    aput-object v6, v0, v2

    const/16 v2, 0x16

    const-class v6, Lkotlin/jvm/functions/Function22;

    aput-object v6, v0, v2

    .line 6
    invoke-static {v0}, Lkotlin/collections/final;->instanceof([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v5}, Lkotlin/collections/final;->l(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    if-gez v3, :cond_0

    .line 9
    invoke-static {}, Lkotlin/collections/final;->j()V

    :cond_0
    check-cast v5, Ljava/lang/Class;

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/support/v4/c92;->do(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/qb1;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lkotlin/collections/continue;->O(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lkotlin/jvm/internal/const;->if:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "boolean"

    const-string v3, "kotlin.Boolean"

    .line 12
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "char"

    const-string v5, "kotlin.Char"

    .line 13
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "byte"

    const-string v6, "kotlin.Byte"

    .line 14
    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "short"

    const-string v7, "kotlin.Short"

    .line 15
    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "int"

    const-string v8, "kotlin.Int"

    .line 16
    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "float"

    const-string v9, "kotlin.Float"

    .line 17
    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "long"

    const-string v10, "kotlin.Long"

    .line 18
    invoke-virtual {v0, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "double"

    const-string v11, "kotlin.Double"

    .line 19
    invoke-virtual {v0, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sput-object v0, Lkotlin/jvm/internal/const;->for:Ljava/util/HashMap;

    .line 21
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v12, "java.lang.Boolean"

    .line 22
    invoke-virtual {v2, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "java.lang.Character"

    .line 23
    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "java.lang.Byte"

    .line 24
    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "java.lang.Short"

    .line 25
    invoke-virtual {v2, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "java.lang.Integer"

    .line 26
    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "java.lang.Float"

    .line 27
    invoke-virtual {v2, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "java.lang.Long"

    .line 28
    invoke-virtual {v2, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "java.lang.Double"

    .line 29
    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sput-object v2, Lkotlin/jvm/internal/const;->new:Ljava/util/HashMap;

    .line 31
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v5, "java.lang.Object"

    const-string v6, "kotlin.Any"

    .line 32
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.lang.String"

    const-string v6, "kotlin.String"

    .line 33
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.lang.CharSequence"

    const-string v6, "kotlin.CharSequence"

    .line 34
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.lang.Throwable"

    const-string v6, "kotlin.Throwable"

    .line 35
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.lang.Cloneable"

    const-string v6, "kotlin.Cloneable"

    .line 36
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.lang.Number"

    const-string v6, "kotlin.Number"

    .line 37
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.lang.Comparable"

    const-string v6, "kotlin.Comparable"

    .line 38
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.lang.Enum"

    const-string v6, "kotlin.Enum"

    .line 39
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.lang.annotation.Annotation"

    const-string v6, "kotlin.Annotation"

    .line 40
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.lang.Iterable"

    const-string v6, "kotlin.collections.Iterable"

    .line 41
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.util.Iterator"

    const-string v6, "kotlin.collections.Iterator"

    .line 42
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.util.Collection"

    const-string v6, "kotlin.collections.Collection"

    .line 43
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.util.List"

    const-string v6, "kotlin.collections.List"

    .line 44
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.util.Set"

    const-string v6, "kotlin.collections.Set"

    .line 45
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.util.ListIterator"

    const-string v6, "kotlin.collections.ListIterator"

    .line 46
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.util.Map"

    const-string v6, "kotlin.collections.Map"

    .line 47
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.util.Map$Entry"

    const-string v6, "kotlin.collections.Map.Entry"

    .line 48
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "kotlin.jvm.internal.StringCompanionObject"

    const-string v6, "kotlin.String.Companion"

    .line 49
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "kotlin.jvm.internal.EnumCompanionObject"

    const-string v6, "kotlin.Enum.Companion"

    .line 50
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 52
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 53
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v2, "primitiveFqNames.values"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v5, 0x2e

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 55
    check-cast v2, Ljava/lang/String;

    .line 56
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "kotlin.jvm.internal."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "kotlinName"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v5, v1, v4, v1}, Lkotlin/text/class;->F4(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "CompanionObject"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".Companion"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/support/v4/c92;->do(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/qb1;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/qb1;->getFirst()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2}, Landroid/support/v4/qb1;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 57
    :cond_2
    sget-object v0, Lkotlin/jvm/internal/const;->if:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 58
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "kotlin.Function"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 59
    :cond_3
    sput-object v3, Lkotlin/jvm/internal/const;->try:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/continue;->break(I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 61
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 62
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 63
    check-cast v3, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 65
    invoke-static {v3, v5, v1, v4, v1}, Lkotlin/text/class;->F4(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 66
    :cond_4
    sput-object v0, Lkotlin/jvm/internal/const;->case:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "jClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/const;->do:Ljava/lang/Class;

    return-void
.end method

.method public static synthetic break()V
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.1"
    .end annotation

    return-void
.end method

.method public static synthetic case()V
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.1"
    .end annotation

    return-void
.end method

.method public static synthetic catch()V
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.1"
    .end annotation

    return-void
.end method

.method public static synthetic class()V
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.1"
    .end annotation

    return-void
.end method

.method public static synthetic const()V
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.4"
    .end annotation

    return-void
.end method

.method public static final synthetic do()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/const;->try:Ljava/util/HashMap;

    return-object v0
.end method

.method public static synthetic else()V
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.1"
    .end annotation

    return-void
.end method

.method public static synthetic final()V
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.1"
    .end annotation

    return-void
.end method

.method public static final synthetic for()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/const;->case:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic goto()V
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.1"
    .end annotation

    return-void
.end method

.method public static final synthetic if()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/const;->if:Ljava/util/Map;

    return-object v0
.end method

.method private final new()Ljava/lang/Void;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/sr0;

    invoke-direct {v0}, Landroid/support/v4/sr0;-><init>()V

    throw v0
.end method

.method public static synthetic super()V
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.1"
    .end annotation

    return-void
.end method

.method public static synthetic this()V
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.1"
    .end annotation

    return-void
.end method

.method public static synthetic throw()V
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.1"
    .end annotation

    return-void
.end method

.method public static synthetic try()V
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.3"
    .end annotation

    return-void
.end method

.method public static synthetic while()V
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.5"
    .end annotation

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/v4/z41;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lkotlin/jvm/internal/const;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/qp0;->try(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    check-cast p1, Lkotlin/reflect/KClass;

    invoke-static {p1}, Landroid/support/v4/qp0;->try(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/super;->else(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/const;->new()Ljava/lang/Void;

    new-instance v0, Landroid/support/v4/qr0;

    invoke-direct {v0}, Landroid/support/v4/qr0;-><init>()V

    throw v0
.end method

.method public getConstructors()Ljava/util/Collection;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/KFunction<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/const;->new()Ljava/lang/Void;

    new-instance v0, Landroid/support/v4/qr0;

    invoke-direct {v0}, Landroid/support/v4/qr0;-><init>()V

    throw v0
.end method

.method public getJClass()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/const;->do:Ljava/lang/Class;

    return-object v0
.end method

.method public getMembers()Ljava/util/Collection;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/KCallable<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/const;->new()Ljava/lang/Void;

    new-instance v0, Landroid/support/v4/qr0;

    invoke-direct {v0}, Landroid/support/v4/qr0;-><init>()V

    throw v0
.end method

.method public getNestedClasses()Ljava/util/Collection;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/KClass<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/const;->new()Ljava/lang/Void;

    new-instance v0, Landroid/support/v4/qr0;

    invoke-direct {v0}, Landroid/support/v4/qr0;-><init>()V

    throw v0
.end method

.method public getObjectInstance()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/v4/z41;
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/const;->new()Ljava/lang/Void;

    new-instance v0, Landroid/support/v4/qr0;

    invoke-direct {v0}, Landroid/support/v4/qr0;-><init>()V

    throw v0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/v4/z41;
    .end annotation

    .line 1
    sget-object v0, Lkotlin/jvm/internal/const;->else:Lkotlin/jvm/internal/const$do;

    invoke-virtual {p0}, Lkotlin/jvm/internal/const;->getJClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/const$do;->do(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSealedSubclasses()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/const;->new()Ljava/lang/Void;

    new-instance v0, Landroid/support/v4/qr0;

    invoke-direct {v0}, Landroid/support/v4/qr0;-><init>()V

    throw v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/v4/z41;
    .end annotation

    .line 1
    sget-object v0, Lkotlin/jvm/internal/const;->else:Lkotlin/jvm/internal/const$do;

    invoke-virtual {p0}, Lkotlin/jvm/internal/const;->getJClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/const$do;->if(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupertypes()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KType;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/const;->new()Ljava/lang/Void;

    new-instance v0, Landroid/support/v4/qr0;

    invoke-direct {v0}, Landroid/support/v4/qr0;-><init>()V

    throw v0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeParameter;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/const;->new()Ljava/lang/Void;

    new-instance v0, Landroid/support/v4/qr0;

    invoke-direct {v0}, Landroid/support/v4/qr0;-><init>()V

    throw v0
.end method

.method public getVisibility()Lkotlin/reflect/new;
    .locals 1
    .annotation build Landroid/support/v4/z41;
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/const;->new()Ljava/lang/Void;

    new-instance v0, Landroid/support/v4/qr0;

    invoke-direct {v0}, Landroid/support/v4/qr0;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/support/v4/qp0;->try(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAbstract()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/const;->new()Ljava/lang/Void;

    new-instance v0, Landroid/support/v4/qr0;

    invoke-direct {v0}, Landroid/support/v4/qr0;-><init>()V

    throw v0
.end method

.method public isCompanion()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/const;->new()Ljava/lang/Void;

    new-instance v0, Landroid/support/v4/qr0;

    invoke-direct {v0}, Landroid/support/v4/qr0;-><init>()V

    throw v0
.end method

.method public isData()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/const;->new()Ljava/lang/Void;

    new-instance v0, Landroid/support/v4/qr0;

    invoke-direct {v0}, Landroid/support/v4/qr0;-><init>()V

    throw v0
.end method

.method public isFinal()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/const;->new()Ljava/lang/Void;

    new-instance v0, Landroid/support/v4/qr0;

    invoke-direct {v0}, Landroid/support/v4/qr0;-><init>()V

    throw v0
.end method

.method public isFun()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/const;->new()Ljava/lang/Void;

    new-instance v0, Landroid/support/v4/qr0;

    invoke-direct {v0}, Landroid/support/v4/qr0;-><init>()V

    throw v0
.end method

.method public isInner()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/const;->new()Ljava/lang/Void;

    new-instance v0, Landroid/support/v4/qr0;

    invoke-direct {v0}, Landroid/support/v4/qr0;-><init>()V

    throw v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/v4/z41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/iz1;
        version = "1.1"
    .end annotation

    .line 1
    sget-object v0, Lkotlin/jvm/internal/const;->else:Lkotlin/jvm/internal/const$do;

    invoke-virtual {p0}, Lkotlin/jvm/internal/const;->getJClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lkotlin/jvm/internal/const$do;->for(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/const;->new()Ljava/lang/Void;

    new-instance v0, Landroid/support/v4/qr0;

    invoke-direct {v0}, Landroid/support/v4/qr0;-><init>()V

    throw v0
.end method

.method public isSealed()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/const;->new()Ljava/lang/Void;

    new-instance v0, Landroid/support/v4/qr0;

    invoke-direct {v0}, Landroid/support/v4/qr0;-><init>()V

    throw v0
.end method

.method public isValue()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/const;->new()Ljava/lang/Void;

    new-instance v0, Landroid/support/v4/qr0;

    invoke-direct {v0}, Landroid/support/v4/qr0;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlin/jvm/internal/const;->getJClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Kotlin reflection is not available)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
