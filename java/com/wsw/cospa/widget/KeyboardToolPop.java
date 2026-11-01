package com.wsw.cospa.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v4.on0;
import android.support.v4.p42;
import android.support.v4.wq;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.wsw.cospa.R;
import com.wsw.cospa.utils.Cthrows;
import com.wsw.cospa.widget.KeyboardToolPop;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.antlr.v4.runtime.tree.xpath.Cdo;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes2.dex */
public class KeyboardToolPop extends PopupWindow {
    private KeyBoardAdapter adapter;
    private String[] keyHelp;
    private List<String> keys;
    private RecyclerView mRecyclerView;
    private OnClickListener onClickListener;

    public class KeyBoardAdapter extends RecyclerView.Adapter<TextViewHolder> {

        public class TextViewHolder extends RecyclerView.ViewHolder {

            @BindView(R.id.arg_res_0x7f090492)
            public TextView textView;

            public TextViewHolder(@NonNull View view) throws NoSuchMethodException, SecurityException {
                super(view);
                ButterKnife.m10352case(this, view);
            }
        }

        public class TextViewHolder_ViewBinding implements Unbinder {
            private TextViewHolder target;

            @UiThread
            public TextViewHolder_ViewBinding(TextViewHolder textViewHolder, View view) {
                this.target = textViewHolder;
                textViewHolder.textView = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090492, "field 'textView'", TextView.class);
            }

            @Override // butterknife.Unbinder
            @CallSuper
            public void unbind() {
                TextViewHolder textViewHolder = this.target;
                if (textViewHolder == null) {
                    throw new IllegalStateException("Bindings already cleared.");
                }
                this.target = null;
                textViewHolder.textView = null;
            }
        }

        public KeyBoardAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return KeyboardToolPop.this.keys.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull final TextViewHolder textViewHolder, int i) {
            textViewHolder.textView.setText((CharSequence) KeyboardToolPop.this.keys.get(i));
            TextView textView = textViewHolder.textView;
            KeyboardToolPop keyboardToolPop = KeyboardToolPop.this;
            textView.setBackground(keyboardToolPop.getSelectorDrawable(keyboardToolPop.getContentView().getContext()));
            textViewHolder.textView.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.widget.KeyboardToolPop.KeyBoardAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (KeyboardToolPop.this.onClickListener != null) {
                        KeyboardToolPop.this.onClickListener.click(textViewHolder.textView.getText().toString());
                    }
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public TextViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
            return new TextViewHolder(LayoutInflater.from(KeyboardToolPop.this.getContentView().getContext()).inflate(R.layout.arg_res_0x7f0c009f, (ViewGroup) null, false));
        }
    }

    public interface OnClickListener {
        void click(String str);
    }

    public KeyboardToolPop(Context context, OnClickListener onClickListener) {
        super(-1, -2);
        this.keyHelp = new String[]{"@Header:", "@Header:{Referer:host}", "@Header:{Referer:thisPage}", "@Header:{Referer:prePage}", "@put:", "@get:", "@js", "searchPage", "searchKey", "http://", "https://", "www.", "m.", ".com", ".net", ".cn", "result.match", "replace", "@", "href", "src", "textNodes", "xpath", "json", "css", "id", "class", p42.f4845if, "children", "|", "%", "&", on0.f4694final, "\\", ":", "(", ")", "[", "]", "{", "}", "$", "#", Cdo.f28590try, "."};
        this.keys = new ArrayList();
        this.onClickListener = onClickListener;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.arg_res_0x7f0c00fa, (ViewGroup) null);
        this.mRecyclerView = (RecyclerView) viewInflate.findViewById(R.id.arg_res_0x7f09035a);
        setContentView(viewInflate);
        setTouchable(true);
        setOutsideTouchable(false);
        setFocusable(false);
        setInputMethodMode(1);
        File file = new File(wq.f7623public, "edit.txt");
        if (file.exists() && file.isFile()) {
            try {
                String strM27129for = Cthrows.m27129for(file);
                if (Cclass.E(strM27129for)) {
                    for (String str : strM27129for.split("\\n")) {
                        this.keys.add(str);
                    }
                } else {
                    this.keys = Arrays.asList(this.keyHelp);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            this.keys = Arrays.asList(this.keyHelp);
        }
        this.adapter = new KeyBoardAdapter();
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(context, 0, false));
        this.mRecyclerView.setAdapter(this.adapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable getSelectorDrawable(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{R.attr.arg_res_0x7f040529});
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        typedArrayObtainStyledAttributes.recycle();
        return drawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$initDefault$0(OnClickListener onClickListener, View view) {
        if (onClickListener != null) {
            onClickListener.click(((TextView) view).getText().toString());
        }
    }

    public void initDefault(Context context, LinearLayout linearLayout, final OnClickListener onClickListener) {
        for (int i = 0; i < linearLayout.getChildCount(); i++) {
            TextView textView = (TextView) linearLayout.getChildAt(i);
            textView.setBackground(context.getResources().getDrawable(R.color.arg_res_0x7f060114));
            textView.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.or0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    KeyboardToolPop.lambda$initDefault$0(onClickListener, view);
                }
            });
        }
    }
}
