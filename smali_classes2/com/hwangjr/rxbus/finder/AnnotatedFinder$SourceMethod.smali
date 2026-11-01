.class Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hwangjr/rxbus/finder/AnnotatedFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SourceMethod"
.end annotation


# instance fields
.field private method:Ljava/lang/reflect/Method;

.field private thread:Lcom/hwangjr/rxbus/thread/EventThread;


# direct methods
.method private constructor <init>(Lcom/hwangjr/rxbus/thread/EventThread;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;->thread:Lcom/hwangjr/rxbus/thread/EventThread;

    .line 4
    iput-object p2, p0, Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;->method:Ljava/lang/reflect/Method;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hwangjr/rxbus/thread/EventThread;Ljava/lang/reflect/Method;Lcom/hwangjr/rxbus/finder/AnnotatedFinder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;-><init>(Lcom/hwangjr/rxbus/thread/EventThread;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;)Ljava/lang/reflect/Method;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;->method:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;)Lcom/hwangjr/rxbus/thread/EventThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hwangjr/rxbus/finder/AnnotatedFinder$SourceMethod;->thread:Lcom/hwangjr/rxbus/thread/EventThread;

    return-object p0
.end method
